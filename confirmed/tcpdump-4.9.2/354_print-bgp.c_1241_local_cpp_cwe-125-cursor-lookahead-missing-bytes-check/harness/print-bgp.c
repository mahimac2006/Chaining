#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <arpa/inet.h>
#include <klee/klee.h>

typedef unsigned char u_char;
typedef unsigned int u_int;
typedef struct netdissect_options {
    int ndo_vflag;
    const u_char *ndo_snapend;
} netdissect_options;

struct bgp {
    uint16_t bgp_len;
    uint8_t bgp_type;
};

#ifndef ND_PRINT
#define ND_PRINT(x) do { } while (0)
#endif
#ifndef ND_TCHECK
#define ND_TCHECK(x) do { } while (0)
#endif
#ifndef ND_TCHECK2
#define ND_TCHECK2(x, l) do { } while (0)
#endif

static int decode_clnp_prefix(netdissect_options *ndo,
                   const u_char *pptr, char *buf, u_int buflen)
{
    klee_warning_once("SPINE_PROBE:decode_clnp_prefix:ENTRY");
        uint8_t addr[19];
	u_int plen;

	ND_TCHECK(pptr[0]);
	plen = pptr[0];

	if (152 < plen)
		return -1;

	memset(&addr, 0, sizeof(addr));
	ND_TCHECK2(pptr[4], (plen + 7) / 8);
	memcpy(&addr, &pptr[4], (plen + 7) / 8);
	if (plen % 8) {
		addr[(plen + 7) / 8 - 1] &=
			((0xff00 >> (plen % 8)) & 0xff);
	}
	snprintf(buf, buflen, "%s/%d",
                 "",
                 plen);

	klee_assert(0 && "SAILOR_SINK_REACHED");
	return 1 + (plen + 7) / 8;
}

/* AUTO-GENERATED: intermediate spine pass-through */

/* AUTO-GENERATED: intermediate spine pass-through */
void bgp_attr_print(netdissect_options *ndo, const u_char *p, int hlen) {
    decode_clnp_prefix(ndo, 0, 0, 0);  /* AUTO-INJECTED: spine call chain */

    klee_warning_once("SPINE_PROBE:bgp_attr_print:ENTRY");
}

void bgp_update_print(netdissect_options *ndo, const u_char *p, int hlen) {
    bgp_attr_print(ndo, p, hlen);  /* AUTO-INJECTED: spine call chain */

    klee_warning_once("SPINE_PROBE:bgp_update_print:ENTRY");
}


static int bgp_header_print(netdissect_options *ndo, const u_char *p, int hlen) {
    bgp_update_print(ndo, p, hlen);  /* AUTO-INJECTED: spine call chain */

    klee_warning_once("SPINE_PROBE:bgp_header_print:ENTRY");
	char outbuf[128];
	unsigned char local[32];
	(void)p; (void)hlen;
	memset(local, 0, sizeof(local));
	local[0] = 8;
	decode_clnp_prefix(ndo, local, outbuf, sizeof(outbuf));
	return 0;
}

void
bgp_print(netdissect_options *ndo,
          const u_char *dat, int length)
{
    klee_warning_once("SPINE_PROBE:bgp_print:ENTRY");
	(void)dat;
	(void)length;
	if (ndo->ndo_vflag < 1)
		return;
	bgp_header_print(ndo, dat, length);
	return;
}
