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

echo "BASH....................: [$BASH]"
echo "BASH_COMMAND............: [$BASH_COMMAND]"
echo "BASHOPTS................: [$BASHOPTS]"
echo "BASH_ARGV0..............: [$BASH_ARGV0]"
echo "BASH_ARGV...............: [$BASH_ARGV]"
echo "BASH_ARGC...............: [$BASH_ARGC]"
echo "BASH_CMDS...............: [$BASH_CMDS]"
echo "BASHPID.................: [$BASHPID]"
echo "BASH_SOURCE.............: [$BASH_SOURCE]"
echo "BASH_VERSION............: [$BASH_VERSION]"
echo "BASH_VERSINFO...........: [$BASH_VERSINFO]"
echo "BASH_ALIASES............: [$BASH_ALIASES]"
echo "BASH_COMPLETION_VERSINFO: [$BASH_COMPLETION_VERSINFO]"
echo "BASH_SUBSHELL...........: [$BASH_SUBSHELL]"
echo "BASH_LINENO.............: [$BASH_LINENO]"
echo "BASH_REMATCH............: [$BASH_REMATCH]"

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then

	echo "Script ${BASH_SOURCE[0]} without 'source'."
	exit -1

else

	echo "Script ${BASH_SOURCE[0]} 'sourced'."
	return 1

fi
