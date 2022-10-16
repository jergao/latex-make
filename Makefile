# Define the latex compiler
LATEX = latex
# Define the file name, without .tex
FILE = main
# Define the output name
OUTPUT_NAME = main
# Define the output and build directory
BUILD_DIR = ./build
OUT_DIR = ./out

default: 
	mkdir -p $(BUILD_DIR)
	mkdir -p $(OUT_DIR)
	ispell --mode=tex main.tex
	$(LATEX) --output-directory=$(BUILD_DIR) --output-format='pdf' '$(FILE).tex'
	cp '$(BUILD_DIR)/$(FILE).pdf' '$(OUT_DIR)/$(OUTPUT_NAME).pdf'
	make open

open:
	xdg-open '$(OUT_DIR)/$(OUTPUT_NAME).pdf'

clean: 
	rm -rf '$(BUILD_DIR)'/*
	rm -rf '$(OUT_DIR)'/*

