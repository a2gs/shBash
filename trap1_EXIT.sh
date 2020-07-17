#!/usr/bin/env bash

# Script exit if a command fails:
#set -e

# Script exit if a referenced variable is not declared:
#set -u

# If one command in a pipeline fails, its exit code will be returned as the result of the whole pipeline:
#set -o pipefail

# Activate tracing:
#set -x

tempfilePrefix=./tempfile

tempfile=$(mktemp -q "$tempfilePrefix"XXX)
echo "Created temp file: $tempfile"

# EXIT: Occurs when the shell process itself exits
# ERR: Occurs when a command or a shell built-in command completes with a non-zero status
# DEBUG: A Boolean representing debug mode
trap "echo \"Deleting $tempfile by Ctrl+C\"; rm -f $tempfile" EXIT

echo "sleeping 100 ... Ctrl+C to end and delete temp file $tempfile (same process, but not set in this sample: SIGINT)"
sleep 100

echo "Sleep time finsihed and deleting tempfile $tempfile"
