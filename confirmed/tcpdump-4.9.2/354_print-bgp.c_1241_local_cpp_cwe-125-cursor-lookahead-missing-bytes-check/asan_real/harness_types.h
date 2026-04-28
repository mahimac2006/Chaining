/* AUTO-GENERATED from harness preamble */
#pragma once

#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <arpa/inet.h>

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

