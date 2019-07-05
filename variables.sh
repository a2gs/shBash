#!/bin/bash

#run: source variables.sh

function funcName()
{
	echo '$FUNCNAME:' $FUNCNAME
}

echo '$RANDOM:' $RANDOM
echo '$SECONDS:' $SECONDS
echo '$OSTYPE:' $OSTYPE
funcName
