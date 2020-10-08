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

echo "--- 1 -------------------------------------"

READ_TIMEOUT=10

echo "Write anything and ENTER before $READ_TIMEOUT seconds..."
read -t $READ_TIMEOUT
echo "read default variable got: [$REPLY]"

echo "--- 2 -------------------------------------"

read -p "Two numbers separated by spaces or TABs: " x y
ret=$(( x+y ))
echo "$x + $y = $ret"

echo "--- 3 -------------------------------------"

read -s -p "Enter password: " password
echo "Password: [$password]"

echo "--- 4 -------------------------------------"

LIMITED_INPUT=5

# -N to force $LIMITED_INPUT characteres (neither less, nor more)
read -n $LIMITED_INPUT -p "Write a word with $LIMITED_INPUT characteres: " word1

#if [ $((`echo $word1 | wc -m` - 1)) -eq "$LIMITED_INPUT" ];
if [ "${#word1}" -eq "$LIMITED_INPUT" ];
then
	echo -e ""
fi

echo "Input: [$word1]"


# ARRAY:
#
#    $ read -a array
#    abc def 123 x y z
#
#    $ echo  ${array[@]}
#    abc def 123 x y z
#
#    $ echo  ${array[@]:0:3}
#    abc def 123
#
#    $ echo  ${array[0]}
#    abc
#
#    $ echo  ${array[5]}
#    z
