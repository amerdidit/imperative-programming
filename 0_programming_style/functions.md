# Functions and procedures

* **Every function/procedure head should contain a short comment describing the task, and commenting on the parameters if needed**
* **Parameters are sorted according to their types: input, output, inout.**
* **Identifiers of formal parameters start `in`, `out`, or `io`**
* each parameter is written on its own line.
* A comment with the functions name is placed at the end of the function decleration
* **The layout of the function conforms with the layout of the program**
* **Every variable that is minupilated by a procedure is passed into it as a parameter, no global variables are used.**
* **Variables that are not minipulated by a procedure are passed it as value parameters. On occasion it can be passed in as a variable parameter to save memmory and copy time, the identifier still has to be marked with `in`**
* **Functions are used in the mathematical sense, and should only accept value parameters, exceptions as above.**
* **Value parameters are not abused as local variables.**
