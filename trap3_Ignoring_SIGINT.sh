#!/usr/bin/env bash

# Script exit if a command fails:
#set -e

# Script exit if a referenced variable is not declared:
#set -u

# If one command in a pipeline fails, its exit code will be returned as the result of the whole pipeline:
#set -o pipefail

# Activate tracing:
#set -x

# Run something important, no Ctrl-C allowed.
trap "" SIGINT
echo 'Cannot break with Ctrl+C. Sleep 10 ...'
sleep 10

# Less important stuff from here on out, Ctrl-C allowed.
trap - SIGINT
echo 'Resuming break with Ctrl+C. Sleep 10 ...'
sleep 10
