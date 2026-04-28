# Chains

Adds bug **chaining** on top of the 16 confirmed tcpdump 4.9.2
bugs in `confirmed/tcpdump-4.9.2/`.

> A chain `A → B` exists when the function
> that contains bug A can transitively call the function that
> contains bug B in tcpdump's source. That is the necessary
> condition for a single execution to trip both bugs in sequence.

## 1. Folder layout

```
chains/
├── README.md
├── scripts/
│   ├── 01_index_bugs.py
│   ├── 02_build_callgraph.py
│   └── 03_static_chains.py
└── output/
    ├── bugs.json               per-bug index (entry fn, crash site)
    ├── callgraph.json          { function → [callees] } across tcpdump
    ├── static_chains.json      every ordered pair (A,B) with reach flags
    └── reaches_matrix.md       human-readable matrix + sample paths
```

Inputs (read-only): `../confirmed/tcpdump-4.9.2/`.

---

## 2. How to run

```bash
python3 chains/scripts/01_index_bugs.py
python3 chains/scripts/02_build_callgraph.py
python3 chains/scripts/03_static_chains.py
```

No build, no Docker, no API keys. Pure Python standard library.
Runs in a couple of seconds. Python 3.10+.

---

## 3. What each step does

### Step 1 — Index the bugs

Walks each of the 16 bug folders and pulls out:
- the **entry function** (what the replay driver calls from `main`),
- the **crash function** (what ASan reports),
- the crash file/line and error type.

Writes `bugs.json`.

### Step 2 — Build the call graph

Scans every `.c` file in tcpdump's source tree, finds function
definitions, and records every direct call inside each function
body. The result is a function-level call graph for tcpdump 4.9.2.

Writes `callgraph.json`.

### Step 3 — Compute reachability

For every ordered pair of bugs (A, B), runs a BFS from A's entry
function over the call graph and asks two questions:
- Does it reach B's entry function?
- Does it reach B's exact crash function (stronger)?

For every "yes", records one shortest call path.

Writes `static_chains.json` and the human-readable
`reaches_matrix.md`.

In the matrix:
- `C` — A's entry transitively calls B's exact crash function.
- `E` — A's entry reaches B's entry but not the precise crash site.
- `.` — no direct-call reach.
- `—` — self.

---

## 4. Results

- 16 bugs × 15 = **240 ordered pairs** considered.
- Call graph: **1,035 functions, 1,967 direct call edges**.

| Reachability                                     | Pairs |
|--------------------------------------------------|------:|
| A's entry reaches B's entry                      |    86 |
| A's entry reaches B's exact crash function (`C`) |    82 |

Roughly **one-third of all bug pairs are statically chainable**.

Highlights from the matrix:

- The **802.11 link-layer bugs** (049, 052, 233) sit at the top of
  tcpdump's dispatch tree and reach 12 of the other 15 bugs each.
  A single 802.11 frame can in principle traverse:

  ```
  ieee802_11_if_print → ieee802_11_print → llc_print →
      ip_print → ip_print_demux → {tcp_print, udp_print, igmp_print}
                                 → {bgp_print, beep_print, babel_print, dvmrp_print}
  ```

- The **CIP bug (094)** fans out similarly through
  `cip_if_print → llc_print → ip_print → …`.
- The **six BGP bugs** (055, 058, 171, 353, 354, 370) all live in
  `bgp_print` and chain trivially into each other.
- The **two DVMRP bugs** (217, 219) chain into each other.
- **092, 093, 096, 102** are leaves — application-layer dissectors
  that don't dispatch onward, so they show up only as destinations.

## 6. Next step — concrete validation

For each statically-reachable pair (A, B), produce a single
ASan-instrumented binary that runs A's input then B's input
and reports both crashes. Compiled against the **real** tcpdump
4.9.2 source (not the synthesized harnesses currently shipped
under `confirmed/<bug>/asan_real/`), so the call edges in the
binary match the call edges in the static graph.

---

## 7. Later — pipeline integration

Once the concrete validation is settled and trusted, the same
three-step analysis can be added to **SAILOR** as a new phase
that runs after its existing detection pipeline:

