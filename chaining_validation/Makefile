# ASan chaining validation binaries for tcpdump 4.9.2 (Linux; glibc + libpcap).
# Uses separate compile steps to avoid ARG_MAX when listing all tcpdump .c files.

TCPDUMP_BUG := ../confirmed/tcpdump-4.9.2/049_print-802_11.c_1150_local_cpp_cwe-120-overflow
SRC_DIR := $(TCPDUMP_BUG)/src_copy
STUBS := $(TCPDUMP_BUG)/asan_real/stubs.c
CHAIN_LINUX_STUB_SRC := stub_linux_printers.c

# print-pflog.c needs OpenBSD pf headers; stub pflog_if_print for Linux (Docker).
TCPDUMP_SRCS := $(filter-out $(SRC_DIR)/tcpdump.c $(SRC_DIR)/vfprintf.c $(SRC_DIR)/print-pflog.c,$(wildcard $(SRC_DIR)/*.c))
OBJDIR := .obj
TCPDUMP_OBJS := $(patsubst $(SRC_DIR)/%.c,$(OBJDIR)/%.o,$(TCPDUMP_SRCS))
STUBS_OBJ := $(OBJDIR)/stubs.o
CHAIN_LINUX_STUB_OBJ := $(OBJDIR)/stub_linux_printers.o

CLANG ?= clang
CFLAGS := -DHAVE_CONFIG_H \
	-D_U_='__attribute__((unused))' \
	-include $(SRC_DIR)/config.h \
	-fsanitize=address -fsanitize-recover=address \
	-g -O1 -Wno-everything \
	-I$(SRC_DIR)

LDFLAGS := -fsanitize=address -fsanitize-recover=address -lpcap -lcrypto -lbsd

PROOFS := chain_proof1 chain_proof2 chain_proof3 chain_proof4

all: $(PROOFS)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: $(SRC_DIR)/%.c | $(OBJDIR)
	$(CLANG) $(CFLAGS) -c $< -o $@

$(STUBS_OBJ): $(STUBS) | $(OBJDIR)
	$(CLANG) $(CFLAGS) -c $(STUBS) -o $@

$(CHAIN_LINUX_STUB_OBJ): $(CHAIN_LINUX_STUB_SRC) | $(OBJDIR)
	$(CLANG) $(CFLAGS) -c $(CHAIN_LINUX_STUB_SRC) -o $@

# chain_proof1 uses only void* declarations in .c (no netdissect includes)
$(OBJDIR)/chain_proof1.o: chain_proof1.c payloads.h | $(OBJDIR)
	$(CLANG) $(CFLAGS) -c chain_proof1.c -o $@

CHAIN_LINK_OBJS := $(STUBS_OBJ) $(CHAIN_LINUX_STUB_OBJ) $(TCPDUMP_OBJS)

chain_proof1: $(OBJDIR)/chain_proof1.o $(CHAIN_LINK_OBJS)
	$(CLANG) $^ $(LDFLAGS) -o $@

$(OBJDIR)/chain_proof2.o: chain_proof2.c payloads.h | $(OBJDIR)
	$(CLANG) $(CFLAGS) -c chain_proof2.c -o $@

chain_proof2: $(OBJDIR)/chain_proof2.o $(CHAIN_LINK_OBJS)
	$(CLANG) $^ $(LDFLAGS) -o $@

$(OBJDIR)/chain_proof3.o: chain_proof3.c payloads.h | $(OBJDIR)
	$(CLANG) $(CFLAGS) -c chain_proof3.c -o $@

chain_proof3: $(OBJDIR)/chain_proof3.o $(CHAIN_LINK_OBJS)
	$(CLANG) $^ $(LDFLAGS) -o $@

$(OBJDIR)/chain_proof4.o: chain_proof4.c payloads.h | $(OBJDIR)
	$(CLANG) $(CFLAGS) -c chain_proof4.c -o $@

chain_proof4: $(OBJDIR)/chain_proof4.o $(CHAIN_LINK_OBJS)
	$(CLANG) $^ $(LDFLAGS) -o $@

clean:
	rm -rf $(OBJDIR) $(PROOFS)

check: $(PROOFS)
	@for p in $(PROOFS); do \
	  echo "==== $$p ===="; \
	  c=$$(ASAN_OPTIONS=halt_on_error=0 ./$$p 2>&1 | rg -c "ERROR: AddressSanitizer" || true); \
	  if [ "$$c" != 2 ]; then echo "expected 2 ASan errors in $$p, got $$c"; exit 1; fi; \
	done

.PHONY: all clean check
