RUSTC    = rustc
RUSTFLAGS = -C opt-level=3

build/HelloWorld_exotic: override RUSTFLAGS = -C opt-level=3 --target x86_64-unknown-linux-gnu

BUILD_DIR = build

SOURCES := $(wildcard HelloWorld_*.rs)
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(notdir $(SOURCES))))

all: $(TARGETS)

$(BUILD_DIR)/%: %.rs | $(BUILD_DIR)
	$(RUSTC) $(RUSTFLAGS) $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run: $(TARGETS)
	@for exe in $(TARGETS); do \
		echo "=== Running $$exe ==="; \
		$$exe; \
	done

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all run clean
