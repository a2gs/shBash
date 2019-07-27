: '
+ - 	Addition, subtration
++ -- 	Increment, decrement
* / % 	Multiplication, division, remainder
** 	Exponentiation

Numerical boolean expressions in Control Constructs are also expressed using double parenthesis.


Logical and Boolean Operators <= >= < > 	Less than or equal, greater than or equal, less than, greater than
== != 	Equal, not equal
! 	Logical NOT
&& 	Logical AND
|| 	Logical OR

'

#!/bin/bash
x=6
y=5

(( z = x + y ))

if (( x > y )); then
	echo "x > y"
elif (( x < y )); then
	echo "x < y"
else
	echo "x == y"
fi

echo "Sum: $z"

# ---- let
echo
echo '"let" operations:'

: '

var++, var--		Post-increment (++), Post-decrement (--).
						Interpret the value of integer variable var and then add or subtract one (1) to it.

++var, --var		Pre-increment (++), Pre-decrement (--).
						Add or subtract one (1) to the value of integer variable var, and then interpret the value.

-expr, +expr		Unary minus, Unary plus.
						Unary minus returns the value of the expression expr it precedes, as if it had been multiplied by negative one (-1). Unary plus returns the expression expr unchanged, as if it had been multiplied by one (1).

!, ~				Logical negation, Bitwise negation.
					Logical negation returns false if its operand is true, and true if the operand is false.
					Bitwise negation flips the bits in the binary representation of the numeric operand.

**					Exponentiation.

*, /, %			Multiplication, Division, Remainder (modulo).

+, -				Addition, Subtraction.

<<, >>			Bitwise shift left, bitwise shift right.

<=,>=,<,>		Comparison: Less than or equal to, Greater than or equal to, Less than, Greater than.

==, !=			Equality, Inequality.
					Equality returns true if its operands are equal, false otherwise. Inequality returns true if its operands are not equal, false otherwise.

&					Bitwise AND.
					The corresponding binary digits of both operands are multiplied to produce a result; for any given digit, the resulting digit is 1 if and only if the corresponding digit in both operands is also 1.

^					Bitwise XOR (eXclusive OR).
					A binary digit of the result is 1 if and only if the corresponding digits of the operands differ. For instance, if the first binary digit of the first operand is 1, and the first digit of the second operand is 0, the first digit of the result is 1.

|					Bitwise OR.
					If either of the corresponding digits in the operands is 1, that digit in the result will also be 1.

&&					Logical AND.
					Returns true if both of the operands are true.

||					Logical OR.
					Returns true if either of the operands is true.

expr1 ? expr2 : expr3		Conditional (ternary) operator.
									If expr1 is true, return expr2. If expr1 is false, return expr3.

=, *=, /=, %=, +=, -=, <<=, >>=, &=, ^=, |=				Assignment.
					Assign the value of the expression that follows the operator, to the variable that precedes it. If an operator prefixes the equals sign, that operation is performed prior to assignment.
					For instance, let "var += 5" is equivalent to let "var = var + 5". The assignment operation itself evaluates to the value assigned.

'

let "z=$x+$y"
let "myvar = 5"; echo $myvar
let "varone = 1" "vartwo = varone++"; echo $varone, $vartwo
let "myvar = 48 % 5"; echo $myvar
let "myvar = 16 << 2"; echo $myvar
let "myvar = 16 >> 2"; echo $myvar
let "myvar = 5, myvar *= 2"; echo $myvar
