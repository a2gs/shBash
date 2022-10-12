#!/usr/bin/env bash
# Andre Augusto Giannotti Scota (https://sites.google.com/view/a2gs/  andre.scota@gmail.com)

# arr=()				Create an empty array
# arr=(1 2 3)		Initialize array
# ${arr[2]}			Retrieve third element
# ${arr[@]}			Retrieve all elements
# ${!arr[@]}		Retrieve array indices
# ${#arr[@]}		Calculate array size
# arr[0]=3			Overwrite 1st element
# arr+=(4)			Append value(s)
# str=$(ls)			Save ls output as a string
# arr=( $(ls) ) 	Save ls output as an array of files
# ${arr[@]:s:n} 	Retrieve n elements starting at index s

echo '--- ARRAY ----------------------'

declare -a text
text=( "abc" 123 "def" 456 "lmn" )

echo "Total elemenst: ${#text[@]}"

for i in ${!text[@]};
do
	echo "$i: ${text[$i]}";
done

echo 'or'

for i in "${text[@]}";
do
	echo "$i";
done

text+=("xyz")
echo "Total elemenst: ${#text[@]}"

printf "%s\n" "${text[@]}"

echo '--- HASH ----------------------'

declare -A text2
text2[aaa]='AAA'
text2[bbb]='BBB'
text2['ccc']='CCC'
text2[123]=789
valD='ddd'

if [ -v text2['ddd'] ]; then
    echo "key1 exists in a dictionary"
fi

text2["$valD"]='DDD'
unset text2['bbb']

for key in "${!text2[@]}"; do
	echo "$key->${text2[$key]}"
done
