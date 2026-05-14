CC = clang
BUILD_DIR = build

HOST_ARCH := $(shell uname -m)
SYSROOT_EXISTS = yes

ifeq ($(HOST_ARCH),aarch64)
	LDFLAGS = 
else ifeq ($(HOST_ARCH),arm64)
	LDFLAGS = 
else
	SYSROOT = /usr/aarch64-linux-gnu
	LDFLAGS = --target=aarch64-linux-gnu --sysroot=$(SYSROOT) -static
	SYSROOT_EXISTS := $(shell test -d $(SYSROOT) && echo yes || echo no)
endif

SOURCES := $(wildcard *.asm)
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(SOURCES)))

all: $(TARGETS)

$(BUILD_DIR)/%: %.asm | $(BUILD_DIR)
ifeq ($(SYSROOT_EXISTS),no)
	@echo "aarch64-linux-gnu must be installed!"
	@exit 1
endif
	$(CC) $(LDFLAGS) $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean