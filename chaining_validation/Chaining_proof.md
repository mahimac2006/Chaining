# Chaining Validation (Simple Guide)

This folder demonstrates **runtime staged chaining** for tcpdump 4.9.2.

Runtime staged chaining means:
1. trigger bug A,
2. keep the same process alive,
3. trigger bug B.

This is different from "single input" chaining. Here, the driver explicitly runs two stages.
This validates static chain hypotheses by checking whether both staged bugs are reported by AddressSanitizer in one process run.

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

---

## Environment

- Intended environment: Linux (glibc) with `libpcap-dev`.
- macOS usually fails to compile this setup directly because the included tcpdump `config.h` is Linux-oriented.

---

## Relation to static chains

Static analysis outputs are in:

- `chains/output/static_chains.json`
- [chains/output/reaches_matrix.md](../chains/output/reaches_matrix.md)

Static chains say "A can reach B in call graph."
These runtime drivers are concrete staged tests for selected pairs.
