ASM      = nasm
CC       = gcc
BUILD_DIR = build

ASMFLAGS = -f elf64 -g -F dwarf
LDFLAGS  = -no-pie

SOURCES := $(wildcard *.asm)
OBJECTS := $(addprefix $(BUILD_DIR)/, $(SOURCES:.asm=.o))
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(SOURCES)))

all: $(TARGETS)

$(BUILD_DIR)/%.o: %.asm | $(BUILD_DIR)
	$(ASM) $(ASMFLAGS) $< -o $@
$(TARGETS): %: %.o
	$(CC) $< -o $@ $(LDFLAGS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
