#!/bin/bash

dialog --title 'Message' --yesno 'Are you having fun?' 6 25

ret=$?

clear

echo -n "Return: $ret - "

if [ $ret -eq 0 ];
then
	echo "YES"
else
	echo "NO"
fi
