# Introduction to Imperative Programming
	
## The Basics 

* A **Computer** is undementally a machine that can save data and do simple operations on them.
* The operations are executed very fast (millions per second)
* **Algorithms** are the step by step instructions with which those operations should get executed.
* A **programming lanugage** is the language in which the above algorithms are written.
* A collection of *algorithms* writen using a *programming language* is called a **program**
* Benifits of computers:
	* Speed
		* Allows the execution of complex algorithms in relatively small time.
		* There are limitations (solving a chess game for example)
	* High Data Storage Capacity
		* Can store millions of documents and retrieve them in a matter of nanoseconds
	* Reliability
		* Almost all failures are attributed to faulty algorithms, not the computer themselves.
	* Universality
		* The breakthrough is attribution to John von Neumann in 1945, who had the idea of saving the data and program on the same medium.

### Problems and Algorithms

* Everything starts from a **RWP** *real world problem* 
* The **RWP** is distilled into the *informal problem description*
* The problem description is then refined into the **Problem Specification**. 
	* remove contradictions
	* remove any incompleteness
	* remove any vagueness
* **Algorithms** are a group of rules to get a desired outcome from a certain input. Conditions:
	* *finite description:* has be writen in a finite text, and can be broken into elemantary pieces called *steps*
	* *executable:* every step has to be executable.
	* *terminating:* has to come to an end after a specific number of steps
	* *deterministic:* 
* An algorithm solves a class of problems and can be tuned by changing specific parameters.

### Programming Languages
*	**Programming languages** provide the rules that a program must abide
* The **syntax** denotes the 'aesthetics' of a language.
	* the vocabulary
	* standards for the program's structure
* The **semantics** denotes the meaning of the vocabulary and commands provided by a programming language.
* Programming languages are stict, and will generally not tolerate deviations from the syntax and semantics.
* A computer's processer understanding only one programming language. The *machine language* is specific to each processor model.
* The *machine language* is written in binary, and is not meant for humans to write, and so a *translater* is needed.
* A *translator* is a program itself, that converts programs from one language to another.
* The first improvements were *assembler languages*, and its translator is called an *assembler*
* *High Level Programming Languages*, also called 3GLs *Third Generation Languages* are translated into machine language by *compilers*
* Due to the success of 3GLs, a lot were created with various pros and cons, leading to *Domain-Specific* Languages.
	* **FORTRAN** *FORmula TRANSlator* was mainly aimed at mathematical applications
	* **COBOL** *COmmon Business Oriented Language*, the name speaks for itself. Was aimed more at managing large datasets than doing complex calculations.
	* The dominating languages today are C++, C#, Java, C, ADA. (I'm basing that on my course-text. Looking at Github you will see that Javascript is the domminant language, followed by Ruby, and then Java, while Go is increasing in popularity and will probably replace Java and ruby sooner or later, clojure and haskel are also on the rise.) http://www.githubarchive.org/

