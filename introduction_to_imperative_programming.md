# Introduction to Imperative Programming
	
## The Basics 

* A **Computer** is fundamentally a machine that can save data and do simple operations on them.
* The operations are executed very fast (millions per second)
* **Algorithms** are the step by step instructions with which those operations should get executed.
* A **programming lanugage** is the language in which the above algorithms are written.
* A collection of *algorithms* written using a *programming language* is called a **program**
* Benefits of computers:
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
	* *finite description:* has be written in a finite text, and can be broken into elementary pieces called *steps*
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
* Programming languages are strict, and will generally not tolerate deviations from the syntax and semantics.
* A computer's processor understanding only one programming language. The *machine language* is specific to each processor model.
* The *machine language* is written in binary, and is not meant for humans to write, and so a *translator* is needed.
* A *translator* is a program itself, that converts programs from one language to another.
* The first improvements were *assembler languages*, and its translator is called an *assembler*
* *High Level Programming Languages*, also called 3GLs *Third Generation Languages* are translated into machine language by *compilers*
* Due to the success of 3GLs, a lot were created with various pros and cons, leading to *Domain-Specific* Languages.
	* **FORTRAN** *FORmula TRANSlator* was mainly aimed at mathematical applications
	* **COBOL** *COmmon Business Oriented Language*, the name speaks for itself. Was aimed more at managing large datasets than doing complex calculations.
	* The dominating languages today are C++, C#, Java, C, ADA. (I'm basing that on my course-text. Looking at Github you will see that Javascript is the dominant language, followed by Ruby, and then Java, while Go is increasing in popularity and will probably replace Java and ruby sooner or later, *Clojure* and *Haskel* are also on the rise.) http://www.githubarchive.org/

### From Problem to (computer)-solution

To sum up:

1. The starting point is the *real world problem*
2. Through abstraction and concentration the problem is condensed down to the *problem description*
3. The description is then formalised into the *problem specification*
4. Based on the above, the *algorithm* is then developed.
5. The *algorithm* is then implemented in a *3GL* as a *program*.
6. The *program* is then *compiled* into a *machine program*
7. The *parameters* are supplied, and the end-result is returned.

* In cases of massive applications, proving the correctness of an algorithm/program becomes too expensive, and in some cases impossible. In such cases we revert to *testing*.
* Creating proper *documentation* is also an essential part of the workflow. 

### Programming Paradigms


**imperative programming:**
* lat. imperare = to instruct
* The idea is to give the computer step by step instructions to solve a problem.
* The paradigm is a result of the *von-Neumann-Architecture*
* In order to deviate from the step by step instructions in a dynamic manner, Goto (jump instructions) are used.
* The instructions process *data* that is stored in memory.
* Data is usually saved to a *variable*
* a **variable** is a *logical* memory-space. Logical here means that the programer doesn't have to worry about the technical aspects of it.
* Two forms of the impertaive programming paradigm  are:
	* **Procedural imperative programming**
		* The data and the program's instructions are handled seperately.
		* A *procedure* sums together a subset of instructions.
		* These procedures can then be *called*
		* This increases the compactness of the programm, and provides as easier overview.
		* examples:
			* C
			* COBOL
			* FORTRAN
			* Pascal 
			* PL/1
	* **object-oriented imperative programming**
		* Data and the operations that can be executed on that data are summed up as *objects*
		* objects usually represent real-life entities. (Bank accounts, customers, ...etc)
		* The focus is on the Data.
		* The structure is on summing together Objects, and *modularity*
		* examples:
			* C++
			* C#
			* Java
			* Smalltalk

**declarative programming**
* The desired result is declared, and a program finds the solution.
* example: MySQL

**logical programming**
* uses mathematical logic to present and solve problems
* example: PROLOG

**functional programming**
* uses mathematical functions to formulate programs.
* functions can be made up of more functions.
* examples:
	* List (1969)
	* Scheme (1987)

	
### The Computer

#### Computer Architecture

* Pioneered by the *von-Neumann-Computer*
	* **Control Unit**
		* Heart of the computer
		* loads the program
		* decodes the instructions
		* interprets the instructions
	* **Arithmetic Logic Unit**
		* can do logical and arithmetic operations
		* forms the **CPU** together with the *control unit*
	* **Memory**
		* Saves information
		* 1 bit is the smallest element, saving binary information: `{0, 1}, {Low, High}, {Yes, No}`
		* To accommodate more than 200 characters, 8 bits (one *byte*)are needed. 
		* The *byte* is used as the elementary unit for measuring memory.
		* The *address* points to the location of the saved data. 
		* *Addresses* point to *cells* that have a fixed size, usually a byte.
		* **RAM** means that each cell in the memory has the same access time.
	* **Input**
	* **Output**
* The *von-Neumann-Principles*
	1. The computer is made up of the above 5 elements.
	2. The structure of the program is independent of the problem it is supposed to solve. 
	3. Programs, Data, temporary- and end-results are all saved in the same memory.
	4. The memory is split into cells with equal capacity, that are numerated and addressed.
	5. Sequential instructions of a program are saved in sequential cells. Executing one of them increases the address-registry by one.
	6. GOTO-commands allow the deviation from point 5.
	7. The following needs to exist:
		* Arithmetic operations.
		* logical operations
		* transport instructions (in,output save, read data)
		* conditional GOTO-commands
	8. All data is recorded in Binary.

* The von-Neumann-Architecutre is a **SISDA**: *Single Instruction Stream, Single Data Stream Architecture*

#### Computersystems

* Hardware:
	* Input (keyboard, mouse, camera, ...etc)
	* Storage (HDD, SSD, CD, DVD)
	* Output (printer, screen, ...etc)
	* Transport (modem, ...etc)
* Software:
	* Applications
	* Operating Systems
	* Databanks
	* Compilers
	* Drivers