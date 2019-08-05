#!/bin/bash

tempFile=`mktemp -p ./`

dialog --inputbox "Enter your name:" 8 40 2>$tempFile

clear

echo "Return: [`cat $tempFile`]"

rm -f $tempFile
