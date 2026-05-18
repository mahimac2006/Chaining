# Chaining Validation

This folder demonstrates chaining validation for tcpdump 4.9.2.

In this setup, each proof does:
1. trigger bug A,
2. keep the same process alive,
3. trigger bug B.

In other words, this project demonstrates a practical and reproducible form of
vulnerability chaining for offensive/security testing workflows: trigger A, keep
execution alive, and then reach/crash B in the same run.

---

## What is in this folder

### Drivers

| Driver | Staged pair |
|---|---|
| [chain_proof1.c](chain_proof1.c) | `049 -> 093` |
| [chain_proof2.c](chain_proof2.c) | `049 -> 092` |
| [chain_proof3.c](chain_proof3.c) | `049 -> 058` |
| [chain_proof4.c](chain_proof4.c) | `049 -> 055` |

### Shared payloads

- [payloads.h](payloads.h) contains the PoC byte arrays used by the drivers.
- These bytes were taken from each bug's `asan_real/replay_driver.c` under `confirmed/tcpdump-4.9.2/`.

### Build support

- [Makefile](Makefile) builds tcpdump + drivers with ASan on Linux.
- [stub_linux_printers.c](stub_linux_printers.c) provides Linux build stubs needed for linking.

---

## What these drivers prove

If a driver run shows 2 ASan errors, that proves:

- both stages executed in one process run,
- memory errors were observed in both stages of the staged flow.

Why this is useful:

- it turns B validation into a deterministic two-stage workflow (A then B),
- it avoids process restart and keeps analysis in one execution timeline,
- it provides repeatable multi-bug crash evidence for exploit-chain style reporting.

It does **not** prove:

- one packet naturally hit both bugs with one parser entry call.

---

## How a driver works

Each `chain_proof*.c` follows the same pattern:

1. Build stage-1 input and call stage-1 entry function.
2. If stage 1 hard-crashes, use `SIGSEGV + sigsetjmp/siglongjmp` to continue.
3. Build stage-2 input and call stage-2 entry function.
4. Exit.

So the chain is explicit and staged: A then B.

---

## Build and run

Run from this directory:

```bash
make
```

Run one driver manually:

```bash
ASAN_OPTIONS=halt_on_error=0 ./chain_proof1
```

Run all staged drivers and check for 2 ASan errors each:

```bash
make check
```

Generate a concise reproducibility report:

```bash
make check
# then see staged_chain_results.csv
```

The report file `staged_chain_results.csv` is the finalized deliverable for
the staged-runtime claim ("A then B in one process"), not for causal-help.

---

- Intended environment: Linux (glibc) with `libpcap-dev`.
<<<<<<< HEAD
=======
- macOS usually fails to compile this setup directly because the included tcpdump `config.h` is Linux-oriented.

---

## Relation to static chains

Static analysis outputs are in:

- `chains/output/static_chains.json`
- [chains/output/reaches_matrix.md](../chains/output/reaches_matrix.md)

Static chains say "A can reach B in call graph."
These runtime drivers are concrete staged tests for selected pairs.

---

## Final claim boundary

- Confirmed: a useful staged runtime chain model for selected pairs
  (`049 -> 093`, `049 -> 092`, `049 -> 058`, `049 -> 055`) with reproducible
  two-error runs in one process.
- Confirmed: this model makes B easier to test and reproduce operationally
  (same process, fixed sequence, deterministic replay harness).
- Not claimed: a strict causal probability lift where triggering A increases the
  natural likelihood of reaching B under uncontrolled fuzzing.

---

## Suggested presentation wording

If you need one clear sentence for slides:

> We established a reproducible staged chaining method in tcpdump where bug A
> is used as a first-stage trigger and bug B is then reliably reached/crashed in
> the same process, giving a practical multi-bug chain even when single-dispatch
> natural chaining is sparse.
>>>>>>> 25cf953 (commit)
