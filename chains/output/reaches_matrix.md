# Static call-graph reachability between confirmed bugs

Bugs: 16.  Pairs where A's entry transitively calls B's entry: **86**.  
Pairs where A's entry reaches B's crash function: **82**.

Legend: `C` = A's entry transitively calls B's crash function (strongest); 
`E` = reaches B's entry but not the precise crash function; 
`.` = no direct-call reach.

| from \ to | 049 | 052 | 055 | 058 | 092 | 093 | 094 | 096 | 102 | 171 | 217 | 219 | 233 | 353 | 354 | 370 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 049 | — | C | C | C | C | C | . | C | E | C | C | C | C | C | C | C |
| 052 | C | — | C | C | C | C | . | C | E | C | C | C | C | C | C | C |
| 055 | . | . | — | C | . | . | . | . | . | C | . | . | . | C | C | C |
| 058 | . | . | C | — | . | . | . | . | . | C | . | . | . | C | C | C |
| 092 | . | . | . | . | — | . | . | . | . | . | . | . | . | . | . | . |
| 093 | . | . | . | . | . | — | . | . | . | . | . | . | . | . | . | . |
| 094 | . | . | C | C | C | C | — | C | E | C | C | C | . | C | C | C |
| 096 | . | . | . | . | . | . | . | — | . | . | . | . | . | . | . | . |
| 102 | . | . | . | . | . | . | . | . | — | . | . | . | . | . | . | . |
| 171 | . | . | C | C | . | . | . | . | . | — | . | . | . | C | C | C |
| 217 | . | . | . | . | . | . | . | . | . | . | — | C | . | . | . | . |
| 219 | . | . | . | . | . | . | . | . | . | . | C | — | . | . | . | . |
| 233 | C | C | C | C | C | C | . | C | E | C | C | C | — | C | C | C |
| 353 | . | . | C | C | . | . | . | . | . | C | . | . | . | — | C | C |
| 354 | . | . | C | C | . | . | . | . | . | C | . | . | . | C | — | C |
| 370 | . | . | C | C | . | . | . | . | . | C | . | . | . | C | C | — |

## Bug index

- **049**  `ieee802_11_if_print`  →  crash `ieee802_11_if_print` @ `print-802_11.c:2140` (heap-buffer-overflow)
- **052**  `ieee802_11_if_print`  →  crash `ieee802_11_print` @ `print-802_11.c:2059` (heap-buffer-overflow)
- **055**  `bgp_print`  →  crash `bgp_print` @ `print-bgp.c:2797` (heap-buffer-overflow)
- **058**  `bgp_print`  →  crash `bgp_print` @ `print-bgp.c:2797` (heap-buffer-overflow)
- **092**  `beep_print`  →  crash `beep_print` @ `print-beep.c:67` (heap-buffer-overflow)
- **093**  `cdp_print`  →  crash `cdp_print` @ `print-cdp.c:107` (heap-buffer-overflow)
- **094**  `cip_if_print`  →  crash `cip_print` @ `print-cip.c:50` (heap-buffer-overflow)
- **096**  `babel_print`  →  crash `babel_print` @ `print-babel.c:52` (heap-buffer-overflow)
- **102**  `smb_tcp_print`  →  crash `` @ `:0` (SEGV)
- **171**  `bgp_print`  →  crash `bgp_print` @ `print-bgp.c:2797` (heap-buffer-overflow)
- **217**  `dvmrp_print`  →  crash `dvmrp_print` @ `print-dvmrp.c:75` (heap-buffer-overflow)
- **219**  `dvmrp_print`  →  crash `dvmrp_print` @ `print-dvmrp.c:75` (heap-buffer-overflow)
- **233**  `ieee802_11_if_print`  →  crash `ieee802_11_if_print` @ `print-802_11.c:2140` (heap-buffer-overflow)
- **353**  `bgp_print`  →  crash `bgp_print` @ `print-bgp.c:2797` (heap-buffer-overflow)
- **354**  `bgp_print`  →  crash `bgp_print` @ `print-bgp.c:2797` (heap-buffer-overflow)
- **370**  `bgp_print`  →  crash `bgp_print` @ `print-bgp.c:2797` (heap-buffer-overflow)

## Chains that reach the crash function (sample paths)

- `049 → 052`: ieee802_11_if_print → ieee802_11_print
- `049 → 055`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `049 → 058`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `049 → 092`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → beep_print
- `049 → 093`: ieee802_11_if_print → ieee802_11_print → llc_print → snap_print → cdp_print
- `049 → 096`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → udp_print → babel_print
- `049 → 171`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `049 → 217`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → igmp_print → dvmrp_print
- `049 → 219`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → igmp_print → dvmrp_print
- `049 → 233`: ieee802_11_if_print
- `049 → 353`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `049 → 354`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `049 → 370`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `052 → 049`: ieee802_11_if_print
- `052 → 055`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `052 → 058`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `052 → 092`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → beep_print
- `052 → 093`: ieee802_11_if_print → ieee802_11_print → llc_print → snap_print → cdp_print
- `052 → 096`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → udp_print → babel_print
- `052 → 171`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `052 → 217`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → igmp_print → dvmrp_print
- `052 → 219`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → igmp_print → dvmrp_print
- `052 → 233`: ieee802_11_if_print
- `052 → 353`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `052 → 354`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `052 → 370`: ieee802_11_if_print → ieee802_11_print → llc_print → ip_print → ip_print_demux → tcp_print → bgp_print
- `055 → 058`: bgp_print
- `055 → 171`: bgp_print
- `055 → 353`: bgp_print
- `055 → 354`: bgp_print
