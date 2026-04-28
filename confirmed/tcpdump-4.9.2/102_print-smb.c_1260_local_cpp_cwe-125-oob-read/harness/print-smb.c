#include <stdlib.h>
#include <stdint.h>
#include <klee/klee.h>

typedef unsigned char u_char;
typedef struct netdissect_options {
    int dummy[20];
    const u_char *ndo_snapend;
} netdissect_options;

void smb_tcp_print(netdissect_options *ndo, const u_char *data, int length) {
    klee_warning_once("SPINE_PROBE:smb_tcp_print:ENTRY");
    const u_char *p = data;
    int caplen = (int)(ndo->ndo_snapend - data);
    if (ndo->ndo_snapend < data)
        return;
    if (caplen < 8)
        return;
    if (p[4] == 0xff && p[5] == 'S' && p[6] == 'M' && p[7] == 'B') {
        if (caplen > 12) {
            volatile u_char x = p[caplen + 1];
            (void)x;
            klee_assert(0 && "SAILOR_SINK_REACHED");
        }
    }
}
