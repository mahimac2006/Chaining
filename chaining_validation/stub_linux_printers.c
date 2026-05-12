/*
 * print-pflog.c requires OpenBSD pf headers (net/pfvar.h). Linux Docker builds
 * skip that translation unit; print.c still references pflog_if_print.
 */
#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include <netdissect-stdinc.h>
#include <pcap.h>
#include "netdissect.h"

u_int
pflog_if_print(netdissect_options *ndo, const struct pcap_pkthdr *h, const u_char *p)
{
	(void)ndo;
	(void)h;
	(void)p;
	return (0);
}
