#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <arpa/inet.h>
#include <klee/klee.h>

typedef unsigned char u_char;
typedef unsigned int u_int;

#ifndef BGP_SIZE
#define BGP_SIZE 19
#endif
#ifndef ND_PRINT
#define ND_PRINT(args) do { } while (0)
#endif
#ifndef ND_TCHECK2
#define ND_TCHECK2(p, l) do { } while (0)
#endif
#ifndef ND_TCHECK
#define ND_TCHECK(p) do { } while (0)
#endif
#ifndef ND_TTEST2
#define ND_TTEST2(p, l) (1)
#endif
#ifndef ITEMCHECK
#define ITEMCHECK(x) do { } while (0)
#endif
#ifndef EXTRACT_24BITS
#define EXTRACT_24BITS(p) (((unsigned int)((p)[0]) << 16) | ((unsigned int)((p)[1]) << 8) | ((unsigned int)((p)[2])))
#endif

struct netdissect_options {
    int ndo_vflag;
    const u_char *ndo_snapend;
};
typedef struct netdissect_options netdissect_options;

static const char *ip6addr_string(netdissect_options *ndo, const void *ip6) { return "::"; }

static int decode_labeled_prefix6(netdissect_options *ndo,
                       const u_char *pptr, u_int itemlen, char *buf, u_int buflen)
{
    klee_warning_once("SPINE_PROBE:decode_labeled_prefix6:ENTRY");
	struct in6_addr addr;
	u_int plen, plenbytes;

	ND_TCHECK2(pptr[0], 4);
	ITEMCHECK(4);
	plen = pptr[0];

	if (24 > plen)
		return -1;

        plen-=24;

	if (128 < plen)
		return -1;
	itemlen -= 4;

	memset(&addr, 0, sizeof(addr));
	plenbytes = (plen + 7) / 8;
	ND_TCHECK2(pptr[4], plenbytes);
	memcpy(&addr, &pptr[4], plenbytes);
	if (plen % 8) {
		addr.s6_addr[plenbytes - 1] &=
			((0xff00 >> (plen % 8)) & 0xff);
	}
        snprintf(buf, buflen, "%s/%d, label:%u %s",
                 ip6addr_string(ndo, &addr),
                 plen,
                 EXTRACT_24BITS(pptr+1)>>4,
                 ((pptr[3]&1)==0) ? "(BOGUS: Bottom of Stack NOT set!)" : "(bottom)" );

    klee_assert(0 && "SAILOR_SINK_REACHED");
	return 4 + plenbytes;
}

static int bgp_attr_print(netdissect_options *ndo, const u_char *p, u_int len) {
    klee_warning_once("SPINE_PROBE:bgp_attr_print:ENTRY");
    char buf[256];
    return decode_labeled_prefix6(ndo, p, len, buf, sizeof(buf));
}
static int bgp_update_print(netdissect_options *ndo, const u_char *p, u_int len) { return bgp_attr_print(ndo, p, len); }
static int bgp_header_print(netdissect_options *ndo, const u_char *p, u_int len) { return bgp_update_print(ndo, p, len); }

void bgp_print(netdissect_options *ndo, const u_char *dat, int length)
{
    klee_warning_once("SPINE_PROBE:bgp_print:ENTRY");
	const u_char *p;
	const u_char *ep;
	const u_char *start;
	const u_char marker[] = {
		0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
		0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
	};
	struct { uint16_t bgp_len; uint8_t bgp_type; } bgp;
	uint16_t hlen;

	ep = dat + length;
	if (ndo->ndo_snapend < dat + length)
		ep = ndo->ndo_snapend;

	ND_PRINT((ndo, ": BGP"));

        if (ndo->ndo_vflag < 1)
                return;

	p = dat;
	start = p;
	if (p < ep) {
		if (memcmp(p, marker, sizeof(marker)) != 0)
			return;
		memcpy(&bgp, p, BGP_SIZE);
		hlen = ntohs(bgp.bgp_len);
		if (hlen >= BGP_SIZE && hlen <= (u_int)(ep - p)) {
			(void)bgp_header_print(ndo, p, hlen);
		}
	}
}
