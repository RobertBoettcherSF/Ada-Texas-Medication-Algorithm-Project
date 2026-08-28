# Makefile for TMAP Ada Algorithm

.PHONY: all test clean build

GNAT = gprbuild
OBJ_DIR = obj
BIN_DIR = bin

all: build

build:
	@mkdir -p $(OBJ_DIR) $(BIN_DIR)$(GNAT) -P tmap.gpr

test: build
	@echo "Running tests..."
	@./$(BIN_DIR)/tests

clean:
	@echo "Cleaning up..."
	gprclean -P tmap.gpr
	rm -rf $(OBJ_DIR)$(BIN_DIR)
