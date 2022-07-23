#!/bin/bash

opt=$(dialog --menu "Choose one:" 10 30 3 1 red 2 green 3 blue 4 yellow 5 black 6 white)

clear
echo "[$opt]"
