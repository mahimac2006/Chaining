#!/usr/bin/env python3
"""
Build a function-level call graph for tcpdump 4.9.2 from the src_copy/
tree shipped inside one of the confirmed-bug folders.

Approach (regex-based, no compiler):
  1. Read every .c file in the chosen src_copy/.
  2. Strip C/C++ comments and string/char literals (so identifiers
     inside them can't be mistaken for calls).
  3. Find function definitions: a line that starts with a return type
     and identifier, has a '(' ... ')', and is immediately followed by
     '{'. Extract the body by brace-matching.
  4. Inside each body, every `identifier(` is a candidate call.
  5. Filter calls to identifiers that are not C keywords / control flow
     and that we have seen as a function definition somewhere in the
     tree. The intersection is the direct call graph.

Limitations (documented up front):
  - Indirect calls through function-pointer tables (e.g. tcpdump's
    if_printer / port-based dispatch) are NOT captured. v1 covers
    direct calls only. We can augment later with table edges.
  - Macros that expand to function calls are mostly invisible.

Output: chains/output/callgraph.json with shape:
  {
    "files_scanned": [...],
    "functions": { "<name>": { "file": "...", "line": N, "callees": [...] } }
  }
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
# Use any one bug's src_copy as the canonical tcpdump-4.9.2 source.
SRC_COPY = (
    REPO
    / "confirmed"
    / "tcpdump-4.9.2"
    / "049_print-802_11.c_1150_local_cpp_cwe-120-overflow"
    / "src_copy"
)
OUT = REPO / "chains" / "output" / "callgraph.json"

C_KEYWORDS = {
    "if", "else", "for", "while", "do", "switch", "case", "default",
    "return", "break", "continue", "goto", "sizeof", "typedef", "static",
    "inline", "extern", "register", "auto", "const", "volatile",
    "struct", "union", "enum", "void", "char", "short", "int", "long",
    "float", "double", "signed", "unsigned", "_Bool",
    "__attribute__", "__inline__", "__inline",
}

# Identifier followed by '(' — every potential call site.
CALL_RE = re.compile(r"\b([A-Za-z_][A-Za-z0-9_]*)\s*\(")


def strip_comments_and_strings(src: str) -> str:
    """Remove /* */ and // comments and "..."/'...' literals."""
    out = []
    i, n = 0, len(src)
    while i < n:
        c = src[i]
        nxt = src[i + 1] if i + 1 < n else ""
        if c == "/" and nxt == "/":
            j = src.find("\n", i)
            i = n if j == -1 else j
            continue
        if c == "/" and nxt == "*":
            j = src.find("*/", i + 2)
            i = n if j == -1 else j + 2
            continue
        if c == '"' or c == "'":
            quote = c
            out.append(" ")
            i += 1
            while i < n and src[i] != quote:
                if src[i] == "\\" and i + 1 < n:
                    i += 2
                else:
                    i += 1
            i += 1  # skip closing quote
            continue
        out.append(c)
        i += 1
    return "".join(out)


# Match a function definition header at the start of a line:
#   <return type tokens> <name>(<params>) <opt attrs> {
# The return type tokens are matched as one or more identifier-like
# words possibly with '*' between them; the function name is the last
# identifier before '('. We then verify a '{' follows the param list.
DEF_HEADER_RE = re.compile(
    r"""
    ^                                    # start of line
    (?:[A-Za-z_][A-Za-z0-9_]*\s+|\*\s*|const\s+|static\s+|inline\s+|extern\s+){1,6}
    ([A-Za-z_][A-Za-z0-9_]*)             # function name
    \s*\(                                # opening paren
    """,
    re.VERBOSE | re.MULTILINE,
)


def find_function_definitions(text: str, file_label: str):
    """Yield (name, start_of_body_index, line_number, body_string)."""
    n = len(text)
    for m in DEF_HEADER_RE.finditer(text):
        name = m.group(1)
        if name in C_KEYWORDS:
            continue
        # Find the matching close paren of the param list.
        i = m.end() - 1  # position of '('
        depth = 0
        while i < n:
            c = text[i]
            if c == "(":
                depth += 1
            elif c == ")":
                depth -= 1
                if depth == 0:
                    i += 1
                    break
            i += 1
        if depth != 0:
            continue
        # Skip whitespace and any GCC attributes between ')' and '{'.
        # If the next non-space char isn't '{', this is a declaration, not a definition.
        j = i
        # Allow attributes like __attribute__((...)) before '{'.
        while True:
            while j < n and text[j].isspace():
                j += 1
            if j < n and text[j] == "{":
                break
            # Try to skip an __attribute__((...)) blob.
            if text[j : j + 14] == "__attribute__":
                # find balanced parens
                k = text.find("(", j)
                if k == -1:
                    break
                d = 0
                while k < n:
                    cc = text[k]
                    if cc == "(":
                        d += 1
                    elif cc == ")":
                        d -= 1
                        if d == 0:
                            k += 1
                            break
                    k += 1
                j = k
                continue
            break
        if j >= n or text[j] != "{":
            continue
        # Brace-match the body.
        depth = 0
        body_start = j
        k = j
        while k < n:
            c = text[k]
            if c == "{":
                depth += 1
            elif c == "}":
                depth -= 1
                if depth == 0:
                    k += 1
                    break
            k += 1
        if depth != 0:
            continue
        body = text[body_start + 1 : k - 1]
        # 1-based line number of the definition.
        line_no = text.count("\n", 0, m.start()) + 1
        yield name, body, line_no, file_label


def extract_calls(body: str) -> list[str]:
    seen = set()
    out = []
    for cm in CALL_RE.finditer(body):
        name = cm.group(1)
        if name in C_KEYWORDS:
            continue
        if name in seen:
            continue
        seen.add(name)
        out.append(name)
    return out


def main() -> int:
    if not SRC_COPY.exists():
        print(f"error: src_copy not found at {SRC_COPY}", file=sys.stderr)
        return 1

    c_files = sorted(p for p in SRC_COPY.glob("*.c") if not p.name.endswith(":Zone.Identifier"))
    print(f"scanning {len(c_files)} .c files in {SRC_COPY.relative_to(REPO)}")

    functions: dict[str, dict] = {}
    # First pass: collect all definitions (so we can later filter calls
    # to "known functions only" if we want).
    for cf in c_files:
        try:
            raw = cf.read_text(errors="replace")
        except Exception as e:
            print(f"  skip {cf.name}: {e}")
            continue
        clean = strip_comments_and_strings(raw)
        for name, body, line_no, _ in find_function_definitions(clean, cf.name):
            # If the same name appears multiple times (static funcs in
            # different files), merge the callee sets.
            entry = functions.get(name)
            callees = extract_calls(body)
            if entry is None:
                functions[name] = {
                    "file": cf.name,
                    "line": line_no,
                    "callees": callees,
                }
            else:
                # Keep the first-seen file/line; union callees.
                merged = list(dict.fromkeys(entry["callees"] + callees))
                entry["callees"] = merged

    # Restrict callees to known functions (drop libc and unresolved names).
    known = set(functions)
    for name, info in functions.items():
        info["callees"] = [c for c in info["callees"] if c in known and c != name]

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(
        json.dumps(
            {
                "src_root": str(SRC_COPY.relative_to(REPO)),
                "files_scanned": [p.name for p in c_files],
                "functions": functions,
            },
            indent=2,
        )
        + "\n"
    )

    total_edges = sum(len(f["callees"]) for f in functions.values())
    print(f"defined {len(functions)} functions, {total_edges} direct call edges")
    print(f"-> {OUT.relative_to(REPO)}")

    # Sanity: print outgoing calls of a few entry functions used by bugs.
    for fn in [
        "ieee802_11_if_print",
        "ieee802_11_print",
        "bgp_print",
        "babel_print",
        "beep_print",
        "cdp_print",
        "cip_print",
        "cip_if_print",
        "smb_tcp_print",
        "dvmrp_print",
    ]:
        if fn in functions:
            cs = functions[fn]["callees"]
            print(f"  {fn} ({functions[fn]['file']}:{functions[fn]['line']}) calls {len(cs)}: {cs[:8]}{'...' if len(cs) > 8 else ''}")
        else:
            print(f"  {fn}: NOT FOUND")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
