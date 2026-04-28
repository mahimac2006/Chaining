# Chains

Adds bug **chaining** on top of the 16 confirmed tcpdump 4.9.2
bugs in `confirmed/tcpdump-4.9.2/`.

> **Chain (definition).** A chain `A → B` exists when the function
> that contains bug A can transitively call the function that
> contains bug B in tcpdump's source. That is the necessary
> condition for a single execution to trip both bugs in sequence.

---

## Table of contents

1. [Folder layout](#1-folder-layout)
2. [How to run](#2-how-to-run)
3. [What each step does](#3-what-each-step-does)
4. [Results](#4-results)
5. [Limitations](#5-limitations)
6. [Next step — concrete validation](#6-next-step--concrete-validation)
7. [Later — pipeline integration](#7-later--pipeline-integration)

---

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

Full matrix and sample call paths:
[`output/reaches_matrix.md`](output/reaches_matrix.md).

---

## 5. Limitations

1. **Direct calls only.** tcpdump also dispatches through function-
   pointer tables (e.g. link-type → printer, port → application
   printer). The current graph does not follow function pointers,
   so the 86/82 numbers are a lower bound on real reachability.
2. **Macros are not expanded.** Calls hidden inside macros are
   missed.
3. **Same-name `static` functions in different files are merged.**
   Rare in tcpdump and benign for the bugs we're chaining.
4. **Reachability is necessary, not sufficient.** A statically
   reachable pair doesn't yet prove that one execution actually
   triggers both bugs — only that the source permits it. That
   stronger claim is the next step.

---

## 6. Next step — concrete validation

For each statically-reachable pair (A, B), produce a single
ASan-instrumented binary that runs A's input then B's input
and reports both crashes. Compiled against the **real** tcpdump
4.9.2 source (not the synthesized harnesses currently shipped
under `confirmed/<bug>/asan_real/`), so the call edges in the
binary match the call edges in the static graph.

Approach in broad strokes:

1. Compile real tcpdump from the source already in `confirmed/`,
   with ASan enabled, into a static archive.
2. For each statically-reachable pair, generate a small chain
   driver: lift A's setup buffer + entry-function call from its
   replay driver, then lift B's, and put both in one `main`.
3. Link the chain driver against the ASan-instrumented archive.
4. Run with ASan in continue-on-error mode and parse the output
   for two distinct crash reports — one matching A's expected
   crash site, one matching B's.
5. Record pass / fail / build-fail / timeout per pair into
   `output/concrete_chains.json` and add a column to the matrix.

Estimated effort: roughly half a day to a day, mostly because
getting the real tcpdump build green under ASan is the unknown.
Once it builds, generating and running 82 pair binaries is
quick.

This step needs only a Linux toolchain with `clang -fsanitize=address`
(Docker recommended for reproducibility, not required). It does
not depend on any other repository or pipeline.

---

## 7. Later — pipeline integration

Once the concrete validation is settled and trusted, the same
three-step analysis can be added to **SAILOR** as a new phase
that runs after its existing detection pipeline:

- **A new flag/subcommand on `sailor.sh`** (e.g. `sailor.sh chain`
  or `sailor.sh all --with-chains`) that invokes the chain
  scripts on whichever project SAILOR just finished analyzing.
- **Project-aware scripts.** The current scripts hard-code the
  tcpdump paths; they'd take a `--project-dir` argument so the
  same code runs on any project SAILOR has confirmed bugs for.
- **Per-project build recipes.** SAILOR already keeps per-project
  build configs in `configs/`. Each project that wants concrete
  chain validation would get a small companion file describing
  how to build its source as an ASan archive — same pattern
  SAILOR already uses for its own builds.
- **Surfacing results.** SAILOR's per-project `summary.tsv` would
  gain `chains_static` / `chains_concrete` columns alongside the
  existing detection counts.
- **Run order.** The chain phase only needs the confirmed-bug
  output to exist, so it slots in as a cheap post-processing step
  at the very end of the pipeline. It never blocks earlier phases.

Estimated effort to wire in: roughly a day, once the analysis
itself is stable. No new analysis logic — only argparse cleanup
and the per-project build recipes.
