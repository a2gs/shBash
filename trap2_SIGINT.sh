#!/usr/bin/env bash

# Script exit if a command fails:
#set -e

# Script exit if a referenced variable is not declared:
#set -u

# If one command in a pipeline fails, its exit code will be returned as the result of the whole pipeline:
#set -o pipefail

# Activate tracing:
#set -x

#source from: https://www.linuxjournal.com/content/bash-trap-command

ctrlc_count=0

function no_ctrlc()
{
	let ctrlc_count++
	echo
	if [[ $ctrlc_count == 1 ]]; then
		echo 'Stop that.'
	elif [[ $ctrlc_count == 2 ]]; then
		echo 'Once more and I quit.'
	else
		echo 'That s it. I quit.'
		exit
	fi
}

trap no_ctrlc SIGINT

while true
do
	echo "Sleeping: $ctrlc_count"
	sleep 10
done
