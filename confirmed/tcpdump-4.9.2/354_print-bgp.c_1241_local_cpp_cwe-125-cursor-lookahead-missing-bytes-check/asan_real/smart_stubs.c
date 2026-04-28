/* Smart stubs — auto-generated from path + vulnerability analysis */
/* Symbolic stubs model the environment: KLEE explores return values */
/* that both REACH the sink AND TRIGGER the vulnerability */
#include <stdlib.h>
#include <string.h>
// klee removed

/* PROACTIVE: memcmp (libc — prevents KLEE concretization) */
int memcmp(const void *a, const void *b, unsigned long n) { (void)a; (void)b; (void)n; return 1; }

/* PROACTIVE: ntohs (auto-detected external) */
int ntohs() { return 0; }

/* PROACTIVE: snprintf (libc — prevents KLEE concretization) */
int snprintf(char *s, unsigned long n, const char *fmt, ...) { (void)s; (void)n; (void)fmt; if(n>0) s[0]=0; return 0; }
