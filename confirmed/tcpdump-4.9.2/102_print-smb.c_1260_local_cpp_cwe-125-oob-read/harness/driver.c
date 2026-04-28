#include "harness_types.h"
#include <stdlib.h>
#include <stdint.h>
#include <klee/klee.h>

int main(void) {
    netdissect_options *ndo = (netdissect_options *)calloc(1, sizeof(netdissect_options));
    unsigned char *buf = (unsigned char *)calloc(1, 128);

    buf[0] = 0x00;
    buf[1] = 0x00;
    buf[2] = 0x00;
    buf[3] = 0x00;
    buf[4] = 0xff;
    buf[5] = 'S';
    buf[6] = 'M';
    buf[7] = 'B';
    buf[8] = 0x00;
    buf[9] = 0x00;
    buf[10] = 0x00;
    buf[11] = 0x00;

    ndo->ndo_snapend = buf + 128;

    smb_tcp_print(ndo, (const u_char *)buf, 64);
    return 0;
}
