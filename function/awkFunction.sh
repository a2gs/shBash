#!/usr/bin/sh

func(){
	awk -v VAR1=$3 -v VAR2=$4 '
		BEGIN{
		}
		{
			print VAR1 VAR2
			print
		}
		END{
		}' $1 > $2
}

OUT="$1"_out

func $1 $OUT "asd" "qwe"
