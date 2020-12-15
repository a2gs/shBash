#!/usr/bin/env bash

# Andre Augusto Giannotti Scota (https://sites.google.com/view/a2gs/)

# Script exit if a command fails:
#set -e

# Script exit if a referenced variable is not declared:
#set -u

# If one command in a pipeline fails, its exit code will be returned as the result of the whole pipeline:
#set -o pipefail

# Activate tracing:
#set -x

echo "[$BASH_SOURCE] [$0]"

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then

	echo "Script ${BASH_SOURCE[0]} without 'source'."
	exit -1

else

	echo "Script ${BASH_SOURCE[0]} 'sourced'."
	return 1

fi
