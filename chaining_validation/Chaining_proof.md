# Chaining Validation

We want to validate chains found by Claude in the call graph. To do this, we want to create a harness and test the chained path and see if the chained bugs are reported by Address Sanitizer. If they are, we have validated the chain.

---

## Chain drivers (`chain_proof*.c`)

| Driver | Chain | Stage-2 entry | Static path (see [reaches_matrix.md](../chains/output/reaches_matrix.md)) |
|--------|--------|----------------|-----------------------------------------------------------------------------|
| [chain_proof1.c](chain_proof1.c) | **049 → 093** | `cdp_print` | `ieee802_11_if_print → … → snap_print → cdp_print` |
| [chain_proof2.c](chain_proof2.c) | **049 → 092** | `beep_print` | Via IP/TCP → `beep_print` |
| [chain_proof3.c](chain_proof3.c) | **049 → 058** | `bgp_print` | Via IP/TCP → `bgp_print` |
| [chain_proof4.c](chain_proof4.c) | **049 → 055** | `bgp_print` | Via IP/TCP → `bgp_print` |

PoC byte strings for 049, 092, 055, 058, and 093 are in [payloads.h](payloads.h) (lifted from each bug’s `asan_real/replay_driver.c` under `confirmed/tcpdump-4.9.2/`).

> **Note:** The original plan listed **049 → 096** (`babel_print`). The published 096 replay uses a stub-sized `netdissect_options` in the driver while linking real `babel_print`, which does not match a full tcpdump build. **049 → 058** is used instead as a second BGP chain with a 64-byte PoC and real `netdissect_options`.

---

## Methodology

### Step 1 — ASan-instrumented build with error recovery

tcpdump 4.9.2 sources from bug **049**’s `src_copy` are compiled with AddressSanitizer and `-fsanitize-recover=address` so the process can continue after the first reported violation.

**Environment:** Build and run on **Linux** with `libpcap-dev` (and headers such as `<netinet/ether.h>`). The bundled `config.h` targets glibc/Linux; macOS hosts typically fail this compile.

### Step 2 — Unified chain driver

Each `chain_proofN.c` loads the SAILOR PoC bytes, sets `netdissect_options` fields (`ndo_snapend`, `ndo_packetp`, `ndo_snaplen`, `ndo_vflag` where needed), and calls `ndo_set_function_pointers()` from tcpdump’s `print.c` so `ND_PRINT` works. It then calls both entry functions sequentially in one process.

### Step 3 — Signal handling across the crash boundary

Bug **049** can cause a hard fault before ASan recovery. A `SIGSEGV` handler using `sigsetjmp` / `siglongjmp` resumes execution for the second stage.

### Step 4 — Verification

With `ASAN_OPTIONS=halt_on_error=0`, each driver should emit **two** `ERROR: AddressSanitizer` lines in one run.

---

## Build and run (Makefile)

From this directory:

```bash
make                    # builds chain_proof1 … chain_proof4
ASAN_OPTIONS=halt_on_error=0 ./chain_proof1 2>&1 | tee asan1.txt
grep -c "ERROR: AddressSanitizer" asan1.txt   # expect 2
```

Or:

```bash
make check              # builds (if needed) and asserts 2 ASan errors per binary
```

The [Makefile](Makefile) compiles tcpdump sources from:

`../confirmed/tcpdump-4.9.2/049_print-802_11.c_1150_local_cpp_cwe-120-overflow/src_copy`

and excludes `tcpdump.c` and `vfprintf.c` (no second `main`, avoid non-portable `vfprintf.c` stub).

---

## Example output (049 → 093)

```
[049 -> 093] Stage 1: ieee802_11_if_print
=================================================================
==XXXXX==ERROR: AddressSanitizer: heap-buffer-overflow
    #0 ... print-802_11.c:2140 ...

[049 -> 093] Stage 2: cdp_print
=================================================================
==XXXXX==ERROR: AddressSanitizer: heap-buffer-overflow
    #0 ... print-cdp.c:107 ...
```

Two distinct ASan reports in one run show:

1. The static call graph is traversable in a linked binary.
2. Execution can reach the second bug after the first fault (with recovery + siglongjmp where needed).
3. Multiple confirmed bugs can be triggered in one process.

---

## Context

Static analysis in `chains/output/static_chains.json` / [reaches_matrix.md](../chains/output/reaches_matrix.md) lists **82** ordered pairs where bug A’s entry reaches bug B’s crash function. This directory provides runtime drivers for four of those chains (plus the original 049→093). The same pattern extends to other **`C`** cells in the matrix.
