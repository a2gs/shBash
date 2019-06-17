#+ - 	Addition, subtration
#++ -- 	Increment, decrement
#* / % 	Multiplication, division, remainder
#** 	Exponentiation

#Numerical boolean expressions in Control Constructs are also expressed using double parenthesis.


#Logical and Boolean Operators <= >= < > 	Less than or equal, greater than or equal, less than, greater than
#== != 	Equal, not equal
#! 	Logical NOT
#&& 	Logical AND
#|| 	Logical OR

#!/bin/bash
x=6
y=5

let z=$x+$y
# Or: (( z = x + y ))

if (( x > y )); then
	echo "x > y"
elif (( x < y )); then
	echo "x < y"
else
	echo "x == y"
fi

echo "Sum: $z"
