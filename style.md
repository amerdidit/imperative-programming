# Introduction to Imperative Programming
## Programming Style

<!-- currently this is from part one, and will be updated later.-->

*Note: Some rules are bold. Avoiding these rules would lead to getting points subtrackted in my course at uni. I personally am against some. Feel free to judge for yourself.*

### Choosing the identifier

Should be as short as possible, but long enough to convey the meaning of the object or function. 

* Should be verbose and related to the porblem being solved.
* **Use CamelCase starting with a capital letter.**
* **Constants are all UPPERCASE**
* **Type identifiers get a t in the beginning like: `tType`**
* use nouns for variables and constants
* use verbs for functions or procedures
* use adjectives or adverbs for booleans

**Abreviations:**
* use when a verbose identifier becomes too long.
* should be easily understoof from the context, or generally.
* use standard abreviations if they exist
* should be easy to decode and to pronounce
* wordbeginning are more important than ending. constants more important than vowels.
* avoid creating similar identifiers as a result of abreviations.

### Code Layout

* create your own rule for definitions and declerations, for PASCAL this rule is part of the syntax.
* **Each statement starts on a new line**
* **`begin` and `end` are on a new line**
* using redundant whitespaces and parenthesis can increase readability.
* When writing code outside of a colourcoded editor (and honestly, there is no reason to do this at this day and age that I can think of) write the reserved words in **bold**, and if you are drunk in a bar writing code on a napkin, or the zombie apocalypse has started and you are writing code by hand, underline the <u>reserved words</u>.
* place the comments in areas where they are easy to find, and don't disturb the overall structure.

**indentation**

* **statments get indendet a constant length of 2 or 4 spaces between `begin` and `end`. `begin` and `end` do not indent under control statements**
* **statment parts of control statements get indented as well.**
* long blocks of code should have a comment after the final `end`. 

An example of the above three rules:
````pascal
if <condition> thenbegin<statments>endelse { if not <condition> }begin<statements>end { if <condition> };
````

* indent the definition and decleration parts in a program block, but do not indent the `begin` and `end` statements.

**Whitespace/empty lines**

* group together decleration and definition blocks.
* statementgroups of more than 10 lines should get broken up into seperate groups.

### Comments

Comments are an important part of any program. A program lacking in comments, is a program lacking in quality.

* add the comments while you are coding, not as an afterthrought. Keep the comments up to date with codechanges.
* keep the comments conformed with the code layout.
* **At the top of the program desribe the problem this program is supposed to solve. A comment on input and output is also expected.**
* explain constants, types, and variables if they are not clear.
* complex statement blocks should get commented.
* for long control statements, leave a comment after the final `end` indicating the start and structure of the control statement.
* do <u>not</u> add useless comments like `i := i + 1; {erhoehe i um 1}` that only repeat the code.

### Miscelanious

* No implicit type conversion if possible.
* selfdefined datatypes should not be implicitly defined.

