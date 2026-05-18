CC       = gcc
CFLAGS   = -std=c17 -O2 -Wall -Wextra -pedantic
BUILD_DIR = build

SOURCES := $(wildcard HelloWorld_*.c)
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(SOURCES)))

all: $(TARGETS)

$(BUILD_DIR)/%: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run: $(TARGETS)
	@for exe in $(TARGETS); do \
		echo "" \
		echo "=== Running $$exe ==="; \
		$$exe; \
	done

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all run clean
