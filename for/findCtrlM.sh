#!/bin/bash
for $FILE in `find . -name *.c`; do
	sed 's/^M//g' "$FILE" > "$FILE"_OUT #ControlC+ControlM
	mv "$FILE"_OUT "$FILE"
done
