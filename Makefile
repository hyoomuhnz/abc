# Makefile for running and setting up shell script tests

# Specify the shell to use
SHELL := /bin/zsh

# Set up the script
setup:
	@chmod +x abc.sh

# The target that runs the test
test: setup
	@chmod +x test_abc.sh
	@bash test_abc.sh

.PHONY: test setup
