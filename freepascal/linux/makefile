PC       = fpc
PCFLAGS  = -S2 -O3 -XX -CX -Xs

build/helloworld_exotic: override PCFLAGS = -S2 -O3 -XX -CX -Xs -Sd -Sa

BUILD_DIR = build

SOURCES := $(wildcard *.pas)
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(SOURCES)))

all: $(TARGETS)

$(BUILD_DIR)/%: %.pas | $(BUILD_DIR)
	$(PC) $(PCFLAGS) $< -o$@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
