#include "harness_types.h"
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <klee/klee.h>

extern void bgp_print(netdissect_options *ndo, const u_char *dat, int length);

int main(void) {
    netdissect_options *ndo = (netdissect_options *)calloc(1, sizeof(*ndo));
    u_char *buf = (u_char *)calloc(1, 64);
    klee_make_symbolic(buf, 64, "buf");
    buf[0] = 32;
    ndo->ndo_snapend = buf + 64;
    ndo->ndo_vflag = 1;
    bgp_print(ndo, buf, 19);
    return 0;
}
