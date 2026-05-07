CXX      = gfortran
BUILD_DIR = build

SOURCES := $(wildcard *.f90)
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(SOURCES)))

all: $(TARGETS)

$(BUILD_DIR)/%: %.f90 | $(BUILD_DIR)
	$(CXX) $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
