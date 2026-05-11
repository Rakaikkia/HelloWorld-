PC       = fpc
PCFLAGS  = -S2 -O3 -XX -CX -Xs -Twin32

build/helloworld_exotic: override PCFLAGS = -S2 -O3 -XX -CX -Xs -Twin32 -Sd -Sa

BUILD_DIR = build

SOURCES := $(wildcard *.pas)
TARGETS := $(addprefix $(BUILD_DIR)/, $(addsuffix .exe, $(basename $(SOURCES))))

all: $(TARGETS)

$(BUILD_DIR)/%.exe: %.pas | $(BUILD_DIR)
	$(PC) $(PCFLAGS) $< -o$@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rmdir /s /q $(BUILD_DIR) 2>nul || cmd /c exit 0

.PHONY: all clean
