CXX      = g++
CXXFLAGS = -std=c++23 -Wall -Wextra -Ofast -pedantic
build/HelloWorld_exotic_main_cout: CXXFLAGS = -std=c++14 -Wall -Wextra -Ofast -pedantic
build/HelloWorld_exotic_main_cout_wall: CXXFLAGS = -std=c++14 -Wall -Wextra -Ofast -pedantic
BUILD_DIR = build

SOURCES := $(wildcard *.cpp)
TARGETS := $(addprefix $(BUILD_DIR)/, $(basename $(SOURCES)))

all: $(TARGETS)

$(BUILD_DIR)/%: %.cpp | $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
