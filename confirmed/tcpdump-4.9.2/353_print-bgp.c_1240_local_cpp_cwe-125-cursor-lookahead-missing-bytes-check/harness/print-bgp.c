#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <klee/klee.h>

typedef unsigned char u_char;
typedef unsigned int u_int;

typedef struct netdissect_options {
    int ndo_vflag;
    const u_char *ndo_snapend;
} netdissect_options;

#ifndef BGP_SIZE
#define BGP_SIZE 19
#endif

static const char *isonsap_string(netdissect_options *ndo, const uint8_t *addr, u_int len) {
    (void)ndo; (void)addr; (void)len; return "X";
}

static int decode_clnp_prefix(netdissect_options *ndo,
                   const u_char *pptr, char *buf, u_int buflen)
{
    klee_warning_once("SPINE_PROBE:decode_clnp_prefix:ENTRY");
        uint8_t addr[19];
	u_int plen;

	if (0 == pptr[0]) { }
	plen = pptr[0];

	if (152 < plen)
		return -1;

	memset(&addr, 0, sizeof(addr));
	if ((plen + 7) / 8 > 0) {
		memcpy(&addr, &pptr[4], (plen + 7) / 8);
	}
	if (plen % 8) {
		addr[(plen + 7) / 8 - 1] &= ((0xff00 >> (plen % 8)) & 0xff);
	}
	snprintf(buf, buflen, "%s/%d", isonsap_string(ndo, addr,(plen + 7) / 8), plen);
	klee_assert(0 && "SAILOR_SINK_REACHED");
	return 1 + (plen + 7) / 8;
}

/* AUTO-GENERATED: intermediate spine pass-through */

/* AUTO-GENERATED: intermediate spine pass-through */

/* AUTO-GENERATED: intermediate spine pass-through */
void bgp_attr_print(netdissect_options *ndo, const u_char *dat, int length) {
    decode_clnp_prefix(ndo, 0, 0, 0);  /* AUTO-INJECTED: spine call chain */

    klee_warning_once("SPINE_PROBE:bgp_attr_print:ENTRY");
}

void bgp_update_print(netdissect_options *ndo, const u_char *dat, int length) {
    bgp_attr_print(ndo, dat, length);  /* AUTO-INJECTED: spine call chain */

    klee_warning_once("SPINE_PROBE:bgp_update_print:ENTRY");
}

void bgp_header_print(netdissect_options *ndo, const u_char *dat, int length) {
    bgp_update_print(ndo, dat, length);  /* AUTO-INJECTED: spine call chain */

    klee_warning_once("SPINE_PROBE:bgp_header_print:ENTRY");
}


void bgp_print(netdissect_options *ndo, const u_char *dat, int length) {
    bgp_header_print(ndo, dat, length);  /* AUTO-INJECTED: spine call chain */

    klee_warning_once("SPINE_PROBE:bgp_print:ENTRY");
    char buf[64];
    (void)length;
    decode_clnp_prefix(ndo, dat, buf, sizeof(buf));
}
