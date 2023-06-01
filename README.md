# Flutter_projects
This repository consists of few Basic Programs of dart which has the basic concepts of dart programming language in it.

It also has a set of very basic projects of flutter framework.

It has stateless and stateful widgets flutter programs.

Stateless widget - These are widgets which does not let you navigate from one point to another.

Stateful widgets - These are widgets which lets you travel from one page to other and come back to the same page.

These flutter programs are just to make a structure of a page and does not deal with it any form of calculations or functionality.


Dart Theory

// dart package - main componenet of the 
// dart ecosystem

// pub.dev - platform where all packages are present

// dart programs cannot be defined without main

// a package can contain n number of libraries

// Libraries are the only part of the package that is accessible to everyone

// dart Linting - pedantic package as a default analysis option

// Tests - imp component of dart package
// Tests - developement++/Maintenance++
// Confidence/safety

// Compiling and running of dart programs

// Developement phase and production phase

/*
Developement phase - writing , running and debugging
- fast and stable developemt workflow
- Quick analyzer and Reformatting tools
- fast compilation and recompilation
- Code optimization techniques
- intuitive Debugging tools
*/

/*
Production phase - fast optimization
- user experience
- fast startup time 
- usefulness
- good lookingness
- Testing in real world scenarios
*/

// How does a dart program run?

/*
Source code - machine code
Dart Vm
- The runtime system
- developement experience componenets
- JIT and AOT Compilation Pipelines
- Heap memory
- Mutator Thread
*/

/*
Dart vm execute dart apps in 2 ways
- From source by using JIT/AOT compiler
- From snapshots
*/

// 1st - using JIT COMPILER
/*
Dart Vm does not have the ability to run some raw dart code
It expects some kernel libraries( .dill) files
The task of translatinng dart source code into kernel
is handled by a package called commone front end(CFE)
*/

// Euclidean alog and abstract syntax tree

/* kernel binary code is sent to the Dart Virtual machine
 once the kernel binary code is loaded into the VM it is parsed into
 the objects.
 JIT - is used in development phase
  */

// JIT VS AOT
/*
JIT - Compilation is done at runtime line by line 
(Optimized on the go)

AOT - Compilation is done on the entire code before runtime
(One time Optimization)

*/

// What is dart snapshot

/* 
snapshot is optimized for fast startup time
- jit,aot,kernel snapshots
*/
