#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <klee/klee.h>

#ifndef BGP_SIZE
#define BGP_SIZE 19
#endif

typedef unsigned char u_char;

typedef struct netdissect_options {
    int ndo_vflag;
    const u_char *ndo_snapend;
} netdissect_options;

extern void bgp_print(netdissect_options *ndo, const u_char *dat, int length);

int main(void) {
    netdissect_options *ndo = (netdissect_options *)calloc(1, sizeof(*ndo));
    unsigned char *buf = (unsigned char *)calloc(1, 512);

    klee_make_symbolic(buf, 512, "buf");

    ndo->ndo_vflag = 1;
    ndo->ndo_snapend = buf + 512;

    for (int i = 0; i < 16; i++) buf[i] = 0xff;
    buf[16] = 0x00;
    buf[17] = 0x13;
    buf[18] = 0x02;

    bgp_print(ndo, buf, 19);
    return 0;
}
