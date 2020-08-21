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

echo -e'\n----------------------------------\nEnvironment Variables:\n'
echo -e '$0\tThe filename of the current script.'
echo -e '$n\tThese variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on).'
echo -e '$#\tThe number of arguments supplied to a script.'
echo -e '$*\tAll the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.'
echo -e '$@\tAll the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.'
echo -e '$?\tThe exit status of the last command executed.'
echo -e '$$\tThe process number of the current shell. For shell scripts, this is the process ID under which they are executing.'
echo -e '$!\tThe process number of the last background command.'
