/*
 * Runtime chain: bug 049 (ieee802_11_if_print) -> bug 093 (cdp_print).
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <setjmp.h>

#include <netdissect-stdinc.h>
#include "netdissect.h"
#include "print.h"

#include "payloads.h"

sigjmp_buf jump_buffer;

static void crash_catcher(int signum) {
    (void)signum;
    printf("\n[+] Hard crash intercepted. Jumping to next bug...\n\n");
    siglongjmp(jump_buffer, 1);
}

int main(void) {
    signal(SIGSEGV, crash_catcher);

    netdissect_options *ndo1 = calloc(1, sizeof(*ndo1));
    ndo_set_function_pointers(ndo1);
    /*
     * Match SAILOR asan_real/replay_driver.c: a 8-byte fake pcap_pkthdr. Real
     * ieee802_11_if_print reads h->len/h->caplen at Linux libpcap offsets (~16+),
     * so this under-allocation reproduces the confirmed heap-buffer-overflow.
     */
    unsigned char *h = calloc(1, 8);
    ((unsigned int *)h)[0] = P_DATA_049_PKTHDR_CAPLEN;
    ((unsigned int *)h)[1] = P_DATA_049_PKTHDR_CAPLEN;

    unsigned char *payloadA = calloc(1, P_DATA_049_PKTHDR_CAPLEN);
    memcpy(payloadA, p_data_049, P_DATA_049_LEN);
    ndo1->ndo_snapend = payloadA + P_DATA_049_PKTHDR_CAPLEN;
    ndo1->ndo_packetp = payloadA;
    ndo1->ndo_snaplen = P_DATA_049_PKTHDR_CAPLEN;

    if (sigsetjmp(jump_buffer, 1) == 0) {
        printf("[049 -> 093] Stage 1: ieee802_11_if_print\n");
        ieee802_11_if_print(ndo1, (const struct pcap_pkthdr *)h, payloadA);
    }

    netdissect_options *ndo2 = calloc(1, sizeof(*ndo2));
    ndo_set_function_pointers(ndo2);
    unsigned char *payloadB = malloc(P_DATA_093_LEN);
    memcpy(payloadB, p_data_093, P_DATA_093_LEN);
    ndo2->ndo_vflag = 1;
    ndo2->ndo_packetp = payloadB;
    ndo2->ndo_snapend = payloadB + P_DATA_093_LEN;
    ndo2->ndo_snaplen = P_DATA_093_LEN;

    if (sigsetjmp(jump_buffer, 1) == 0) {
        printf("[049 -> 093] Stage 2: cdp_print\n");
        cdp_print(ndo2, payloadB, P_DATA_093_LEN, P_DATA_093_LEN);
    }

    free(payloadB);
    free(ndo2);
    free(payloadA);
    free(h);
    free(ndo1);
    return 0;
}
