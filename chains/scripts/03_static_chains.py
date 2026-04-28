#!/usr/bin/env python3
"""
Compute static call-graph reachability between bug entry functions.

Inputs:
  chains/output/bugs.json
  chains/output/callgraph.json

For each ordered pair (A, B) of confirmed bugs, decide whether
entry_function(A) can transitively reach entry_function(B) by direct
calls. We also include the bug's own entry as reachable from itself
when A == B (trivially), but we don't emit self-pairs as chains.

Outputs:
  chains/output/static_chains.json   structured pair list
  chains/output/reaches_matrix.md    human-readable matrix
"""

from __future__ import annotations

import json
from collections import deque
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
BUGS = REPO / "chains" / "output" / "bugs.json"
CG = REPO / "chains" / "output" / "callgraph.json"
OUT_JSON = REPO / "chains" / "output" / "static_chains.json"
OUT_MD = REPO / "chains" / "output" / "reaches_matrix.md"


def reachable_from(start: str, callees: dict[str, list[str]]) -> set[str]:
    """BFS from start. Returns the set of functions transitively callable
    from start, NOT including start itself unless there's a cycle that
    re-enters it."""
    seen: set[str] = set()
    if start not in callees:
        return seen
    q = deque(callees[start])
    while q:
        f = q.popleft()
        if f in seen:
            continue
        seen.add(f)
        for c in callees.get(f, ()):
            if c not in seen:
                q.append(c)
    return seen


def reach_path(start: str, target: str, callees: dict[str, list[str]]) -> list[str] | None:
    """Return one shortest direct-call path start -> ... -> target, or None."""
    if start == target:
        return [start]
    parent: dict[str, str] = {start: ""}
    q = deque([start])
    while q:
        f = q.popleft()
        for c in callees.get(f, ()):
            if c in parent:
                continue
            parent[c] = f
            if c == target:
                # rebuild
                path = [c]
                while parent[path[-1]]:
                    path.append(parent[path[-1]])
                path.reverse()
                return path
            q.append(c)
    return None


def main() -> int:
    bugs = json.loads(BUGS.read_text())
    cg = json.loads(CG.read_text())
    funcs = cg["functions"]
    callees = {name: info["callees"] for name, info in funcs.items()}

    # Pre-compute reachability set per unique entry function.
    entries = sorted({b["entry_function"] for b in bugs if b["entry_function"]})
    reach_cache = {fn: reachable_from(fn, callees) for fn in entries}

    pairs = []
    for a in bugs:
        ea = a["entry_function"]
        if not ea:
            continue
        for b in bugs:
            if a["id"] == b["id"]:
                continue
            eb = b["entry_function"]
            if not eb:
                continue
            reaches = (ea == eb) or (eb in reach_cache.get(ea, set()))
            entry_reaches_crash = False
            crash_path = None
            if reaches and b.get("crash_function"):
                # Stronger signal: does A's entry reach B's *crash function*
                # (which may be deeper than B's entry — see bug 052 where
                # entry=ieee802_11_if_print but crash is in ieee802_11_print).
                cf = b["crash_function"]
                if cf == ea or cf in reach_cache.get(ea, set()):
                    entry_reaches_crash = True
                    crash_path = reach_path(ea, cf, callees)
            path = reach_path(ea, eb, callees) if reaches else None
            pairs.append({
                "from_id": a["id"],
                "to_id": b["id"],
                "from_entry": ea,
                "to_entry": eb,
                "to_crash_function": b.get("crash_function"),
                "static_reaches_entry": bool(reaches),
                "static_reaches_crash_function": bool(entry_reaches_crash),
                "path_to_entry": path,
                "path_to_crash": crash_path,
            })

    chained = [p for p in pairs if p["static_reaches_entry"]]
    chained_to_crash = [p for p in pairs if p["static_reaches_crash_function"]]

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps({
        "summary": {
            "bugs": len(bugs),
            "ordered_pairs_considered": len(pairs),
            "pairs_static_reaches_entry": len(chained),
            "pairs_static_reaches_crash_function": len(chained_to_crash),
        },
        "pairs": pairs,
    }, indent=2) + "\n")

    # Markdown matrix: rows = from-bug, cols = to-bug. '.' = no reach,
    # 'E' = reaches entry, 'C' = reaches crash function (stronger).
    bug_ids = [b["id"] for b in bugs]
    short = {b["id"]: b["id"].split("_")[0] for b in bugs}  # "049", "052", ...
    header = "| from \\ to | " + " | ".join(short[i] for i in bug_ids) + " |"
    sep = "|" + "---|" * (len(bug_ids) + 1)
    lines = [
        "# Static call-graph reachability between confirmed bugs",
        "",
        f"Bugs: {len(bugs)}.  Pairs where A's entry transitively calls B's entry: **{len(chained)}**.  ",
        f"Pairs where A's entry reaches B's crash function: **{len(chained_to_crash)}**.",
        "",
        "Legend: `C` = A's entry transitively calls B's crash function (strongest); ",
        "`E` = reaches B's entry but not the precise crash function; ",
        "`.` = no direct-call reach.",
        "",
        header,
        sep,
    ]
    pair_lookup = {(p["from_id"], p["to_id"]): p for p in pairs}
    for fa in bug_ids:
        cells = []
        for fb in bug_ids:
            if fa == fb:
                cells.append("—")
                continue
            p = pair_lookup[(fa, fb)]
            if p["static_reaches_crash_function"]:
                cells.append("C")
            elif p["static_reaches_entry"]:
                cells.append("E")
            else:
                cells.append(".")
        lines.append("| " + short[fa] + " | " + " | ".join(cells) + " |")

    lines += ["", "## Bug index", ""]
    for b in bugs:
        lines.append(
            f"- **{short[b['id']]}**  `{b['entry_function']}`  →  crash `{b['crash_function']}` @ "
            f"`{b['crash_file']}:{b['crash_line']}` ({b['error_type']})"
        )

    if chained_to_crash:
        lines += ["", "## Chains that reach the crash function (sample paths)", ""]
        for p in sorted(chained_to_crash, key=lambda x: (x["from_id"], x["to_id"]))[:30]:
            path = " → ".join(p["path_to_crash"]) if p["path_to_crash"] else "(direct)"
            lines.append(f"- `{short[p['from_id']]} → {short[p['to_id']]}`: {path}")

    OUT_MD.write_text("\n".join(lines) + "\n")

    print(f"considered {len(pairs)} ordered pairs")
    print(f"  reaches entry:           {len(chained)}")
    print(f"  reaches crash function:  {len(chained_to_crash)}")
    print(f"-> {OUT_JSON.relative_to(REPO)}")
    print(f"-> {OUT_MD.relative_to(REPO)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
