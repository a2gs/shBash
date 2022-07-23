#!/bin/bash

opt=$(dialog --backtitle "CPU Selection" --radiolist "Select CPU type:" 10 40 4 1 386SX off 2 386DX off 3 486SX off 4 486DX4 on 5 i3 off 6 i5 off 7 i7 off)

clear

echo "[$opt]"
