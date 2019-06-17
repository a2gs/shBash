#!/bin/bash

test()
{
	echo "$1"
	echo "$2"

	if [ "$1" == "abc" ]; then
		return 1
	else
		return 0
	fi
}

test "abc" 123
echo $?
