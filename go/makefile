GO       = go
GOFLAGS  = build -ldflags="-s -w"
BUILD_DIR = build

SOURCES := $(wildcard HelloWorld_*.go)
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(SOURCES)))

all: $(TARGETS)

$(BUILD_DIR)/%: %.go | $(BUILD_DIR)
	$(GO) $(GOFLAGS) -o $@ $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run: $(TARGETS)
	@for exe in $(TARGETS); do \
		echo "\n=== Running $$exe ==="; \
		$$exe; \
	done

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all run clean
