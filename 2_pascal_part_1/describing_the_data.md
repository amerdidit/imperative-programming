# Describing The Data

**The Syntax Diagram for the decleration part:**
![The Syntax Diagram for the decleration part](img/syntaxdiagram-pascal-program-decleration-part.png)

* The *decleration part* declares/defines all previously undefined identifiers that get used in the *statements part*
* Either part of the *decleration part* can be left out, what matters in pascal is that *constants* are declared prior to *variables*

## Datatypes

* A **datatype** defines a set of values and the coresponding operations that can be executed on them.
* Pascal requires that each dataobject be assigned a specific *Type*. This means that Pascal is a *Typed Programming Language*.
* Pascal's standart types: (all *unstructured types*)
	* `integer`
	* `real`
	* `char`
	* `boolean`

### The standard type integer

* Has already been described above.
* has the following standard arithmatic operations:
	* `+`		addition
	* `-`		subtraction
	* `*`		multiplication
	* `div`	division without rest
	* `mod`	modulus operation. returns the remainder of a division.
* The above are called `dyadic operators`, since they require 2 values.
* **Standard functions:**
	* `abs (x)`		absolute function
	* `sqr (x)`		squared fucntion
	* `succ (x)` 	=x+1
	* `pred (x)`	=x-1
	* `odd (x)`		returns `true` if x is odd

### The standard type real

* has the following standard arithmatic operations:
	* `+`		addition
	* `-`		subtraction
	* `*`		multiplication
	* `/`		division
* **Standard functions:**
	* `abs (x)`
	* `sqr (x)`
	* `sin (x)`
	* `cos (x)`
	* `arctan (x)`
	* `exp (x)`
	* `ln (x)`
	* `sqrt (x)`

### The standard type char

* denotes all characters that can be represented by pascal
* are expresed by surrounding them apostrophes: `'a' '9' 'B' '?' ' '`
* an apostrophe is represented as 4 apostrophes: `''''`
* **Standard functions:**
	* `ord (c)` the ordinal of the character
	* `chr (i)` the character with the ordinal i
	* `succ (c)`
	* `pred (c)`
* The above functions depend on the enocoding used.

### The standard type boolean

* values are `true` and `false`
* the **boolean operators**:
	* `and` 	logical ang
	* `or` 	logical or
	* `not` 	logical negation
* **Rational Operators** return boolean values when used on all unstructured types.
	* `=` 	equal
	* `<>` 	not equal
	* `<` 	smaller than
	* `<=` 	not bigger
	* `>` 	bigger than
	* `>=` 	not smaller

### The predefined Datatype String

* a collection of `chars` not exceeding length 255.
* Not defined in standard pascal, but in most other compilers (such as turbo-pascal)

## Declaring constants

**The Syntax Diagram for the constant definition part:**
![The Syntax Diagram for the decleration part](img/syntaxdiagram-pascal-program-constant-definition-part.png)

**The Syntax Diagram for the value:**
![The Syntax Diagram for the decleration part](img/syntaxdiagram-pascal-program-value.png)

Using constants has the follwing advantages:
* Using the identifier is more verbose
* Human error is reduced by simplifing the term that needs to get repeated
* Allows for easier refactoring of code if needed.

**Example**

````pascal
program Circumfurance (input, output);
{ calculate the circumfurance with a given radius }

const
PI = 3.141592654;

var
Radius,
Umfang : real;

begin
	writeln ('Calculating the circumfurance.');
	write ('Input the radius: ');
	readln (Radius);
	Circ := 2.0 * PI * Radius;
	writeln ('The circumfurance: ', Circ)
end. { Circumfurance }
````

The above program would look something like this for the user:

````
Calculating the circumfurance.
Input the radius:  22.5
The circumfurance: 1.4137167E02
````

* Constants can also hold characters. for example: `const HEY = 'hello there!'`

## Declaring variables

**The Syntax Diagram for the variable decleration part:**
![The Syntax Diagram for the variable decleration part](img/syntaxdiagram-pascal-program-variable_decleration-part.png)

* As opposed to constants, variables can change their value during the execution of a program.
* The values a variable can represent, and the operations that are permissable are defined by the type of the variable.
* Possible types are the *stanndard types* `integer`, `real`, `char`, `boolean`, and the *predefined type* `string`, and  *Self-defined types*.

## Uniqueness of declarations
