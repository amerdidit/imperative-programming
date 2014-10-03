# Numbers

Pascal supports two different types of numbers.

## Integers
**The Syntax Diagram for a comment:**
![The Syntax Diagram for a comment](..//syntaxdiagram-pascal-program-comment.png)

* The limit to the number of digits allowed in an integer is imposed by the memmory cell.
	* 16 bit(2byte) would allow 2^16 integer numbers to represented.
	* Half of the representable numbers would be allocated to the positive numbers, including zero. The other half for the negative numbers.
	* `maxint` is a standard-identifier for the largest representable integer. for 15 bit systems, this would be: `2^15 - 1 = 32767`
	* All intergers lie in the interval: `I = [-maxint - 1, maxint]`

## Real

* **real** numbers are Floating point numbers. For more details on floating point arithmetic see: https://en.wikipedia.org/wiki/Floating_point
* A floating point is described as: `f = m•b^e` where f is the number, *m* is called the *mantise*, *b* is the *base*, and *e* is the *exponent*
* Due to the limited storage capacity of memmory cell, there are limitation on the numbers that **real** numbers can represent.
* The limitation on the decimal digits results in round-off errors. For more information see https://en.wikipedia.org/wiki/Round-off_error. For example, taking the base as 10, and asusming a 4 digit limit on the manstise and a 2 digit limit on the exponent:
````
( 2000 + 0.7 ) – 2000	= ( 2.000·10^3 + 7.000·10^(-1) ) – 2.000·10^3
							= ( 2.000·10^3 + 0.000·10^3) – 2.000·10^3
							= 0
(2000 – 2000) + 0.7 	= (2.000·10^3 – 2.000·10^3) + 7.000·10^(– 1)
							= 0.0000·10^0 + 7.000·10^(–1)
							= 7.000·10^(–1)
							= 0.7
````
* the adition and subtraction is done on the mantise, and therefore the base and exponent need to be equal.
* There are two ways to express **real** numbers in pascal:
	* *fixed point form*. Examples: `0.0, 0.123, -12.3 and 12.34567` and not `0., .12,`
	* *denormal* or *non-normalized floating points*: `0E0, 1.23E+04, 123E-4 and 0.12345678E9`

**The Syntax Diagram for a real number:**
![The Syntax Diagram for a real number](..//syntaxdiagram-pascal-program-real-number.png)
