# Code from: https://unix.stackexchange.com/a/505342/331884

#!/bin/bash

helpFunction()
{
   echo ""
   echo "Usage: $0 -a parameterA -b parameterB -c parameterC"
   echo -e "\t-a Description of what is parameterA"
   echo -e "\t-b Description of what is parameterB"
   echo -e "\t-c Flag parameterC"
   echo -e "\t-d Description of what is parameterD"
   exit 1 # Exit script after printing help
}

echo "Total parameters: $#"
echo "They are: $@"

while getopts "a:b:cd:" opt
do
   case "$opt" in
      a ) parameterA="$OPTARG" ;;
      b ) parameterB="$OPTARG" ;;
      c ) parameterC=13 ;;
      d ) parameterD="$OPTARG" ;;
      \? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case parameters are empty
if [ -z "$parameterA" ] || [ -z "$parameterB" ] || [ -z "$parameterD" ]
then
   echo "Some or all of the parameters are empty";
   helpFunction
fi

# Begin script in case all parameters are correct
echo "$parameterA"
echo "$parameterB"
echo "$parameterC"
echo "$parameterD"
