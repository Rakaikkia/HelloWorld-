CSC      = mcs
CSCFLAGS = -optimize+ -warn:4

BUILD_DIR = build

SOURCES := $(wildcard HelloWorld_*.cs)
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(SOURCES)))

all: $(TARGETS)

$(BUILD_DIR)/%: %.cs | $(BUILD_DIR)
	$(CSC) $(CSCFLAGS) -out:$@ $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run: $(TARGETS)
	@for exe in $(TARGETS); do \
		echo "\n=== Running $$exe ==="; \
		mono $$exe; \
	done

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all run clean
