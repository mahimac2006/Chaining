#!/usr/bin/env python3
"""
Index the 16 confirmed tcpdump-4.9.2 bugs into a single JSON file.

For each bug folder under confirmed/tcpdump-4.9.2/:
  - read bug_report.json (crash function/file/line/error type)
  - parse asan_real/replay_driver.c to find the entry function
    actually invoked from main() (this is what a chain has to call)
  - record paths to the driver and the prebuilt replay_bin

Output: chains/output/bugs.json
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
CONFIRMED = REPO / "confirmed" / "tcpdump-4.9.2"
OUT = REPO / "chains" / "output" / "bugs.json"

# Functions that appear in replay drivers but are not dissector entry points.
# We strip these so the entry function we record is the dissector under test.
NON_DISSECTOR_CALLS = {
    "calloc", "malloc", "free", "memcpy", "memset", "strcpy", "strncpy",
    "sizeof", "if", "while", "for", "switch", "return", "main",
    "klee_make_symbolic", "klee_assume",
}

# Pattern: identifier followed by '(' — a call site.
CALL_RE = re.compile(r"\b([a-zA-Z_][a-zA-Z0-9_]*)\s*\(")


def find_entry_function(driver_path: Path) -> str | None:
    """Return the dissector function called from main() in a replay driver.

    Heuristic: read everything from `int main` to end of file, collect call
    sites, drop libc/control-flow/keyword names, and pick the last
    non-trivial call before `return`. In every confirmed driver we have,
    that is the dissector entry (e.g. ieee802_11_if_print, bgp_print).
    """
    text = driver_path.read_text(errors="replace")
    m = re.search(r"int\s+main\s*\([^)]*\)\s*\{", text)
    if not m:
        return None
    body = text[m.end():]
    # Trim at the matching close brace of main (balanced count).
    depth = 1
    end = 0
    for i, c in enumerate(body):
        if c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                end = i
                break
    body = body[:end]

    candidates = []
    for cm in CALL_RE.finditer(body):
        name = cm.group(1)
        if name in NON_DISSECTOR_CALLS:
            continue
        # Skip type casts that look like calls, e.g. (struct foo *)calloc...
        # The regex avoids leading `(` already; nothing else needed.
        candidates.append(name)

    # The dissector call is typically the last non-trivial one.
    return candidates[-1] if candidates else None


def index_bug(bug_dir: Path) -> dict:
    bug_id = bug_dir.name
    report = json.loads((bug_dir / "bug_report.json").read_text())
    asan = report.get("asan_result", {}) or {}

    driver = bug_dir / "asan_real" / "replay_driver.c"
    replay_bin = bug_dir / "asan_real" / "replay_bin"

    entry_fn = find_entry_function(driver) if driver.exists() else None

    return {
        "id": bug_id,
        "entry_function": entry_fn,
        "crash_function": asan.get("crash_function"),
        "crash_file": asan.get("crash_file"),
        "crash_line": asan.get("crash_line"),
        "error_type": asan.get("error_type"),
        "asan_confirmed": bool(report.get("summary", {}).get("asan_confirmed")),
        "replay_driver": str(driver.relative_to(REPO)) if driver.exists() else None,
        "replay_bin": str(replay_bin.relative_to(REPO)) if replay_bin.exists() else None,
    }


def main() -> int:
    if not CONFIRMED.exists():
        print(f"error: {CONFIRMED} not found", file=sys.stderr)
        return 1

    bugs = []
    for bug_dir in sorted(CONFIRMED.iterdir()):
        if not bug_dir.is_dir():
            continue
        bugs.append(index_bug(bug_dir))

    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(json.dumps(bugs, indent=2) + "\n")

    print(f"indexed {len(bugs)} bugs -> {OUT.relative_to(REPO)}")
    missing = [b["id"] for b in bugs if not b["entry_function"]]
    if missing:
        print(f"warning: could not infer entry_function for: {missing}")
    # Quick sanity print.
    for b in bugs:
        print(f"  {b['id']:<70} entry={b['entry_function']}  crash={b['crash_function']}@{b['crash_file']}:{b['crash_line']}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
