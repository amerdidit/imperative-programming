# Code Layout
* create your own rule for definitions and declerations, for PASCAL this rule is part of the syntax.
* **Each statement starts on a new line**
* **`begin` and `end` are on a new line**
* using redundant whitespaces and parenthesis can increase readability.
* When writing code outside of a colourcoded editor (and honestly, there is no reason to do this at this day and age that I can think of) write the reserved words in **bold**, and if you are drunk in a bar writing code on a napkin, or the zombie apocalypse has started and you are writing code by hand, underline the <u>reserved words</u>.
* place the comments in areas where they are easy to find, and don't disturb the overall structure.

## **Indentation**

* **statments get indendet a constant length of 2 or 4 spaces between `begin` and `end`. `begin` and `end` do not indent under control statements**
* **statment parts of control statements get indented as well.**
* long blocks of code should have a comment after the final `end`.

An example of the above three rules:
````pascal
if <condition> then
begin
    <statments>
end
else { if not <condition> }
begin
    <statements>
end { if <condition> };
````

* indent the definition and decleration parts in a program block, but do not indent the `begin` and `end` statements.

## **Whitespace/Blank Lines**

* group together decleration and definition blocks.
* statementgroups of more than 10 lines should get broken up into seperate groups.
* function declerations are seperated by an empty line.
