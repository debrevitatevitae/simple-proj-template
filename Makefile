# Makefile for Python project

# Variables
PYTHON = python
PIP = pip
MAIN_FILE = main.py
REQUIREMENTS_FILE = requirements.txt
DATA_DIR = data
OUTPUT_DIR = output

# Targets
.PHONY: all install run clean

all: install run

install:
	@$(PIP) install -r $(REQUIREMENTS_FILE)

run:
	@$(PYTHON) $(MAIN_FILE)

clean:
	@rm -rf $(OUTPUT_DIR)/*
