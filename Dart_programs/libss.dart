// a library can be formed out of multiple files

// libraries can be imported using keyword import

// taking the in built library
import 'dart:math';

// taking library from another directory - dir/libname
import 'package:lakshflutterproj/maths_calc.dart'; 

// taking library from the same directory
import 'List_basics.dart'; 

// when importing a library file from another package "package:directive" is used
import 'package:collection/algorithms.dart';

import 'classsess.dart';

// we can create customed libraries as well

// math librray in use , therefore methods like sqrt , ceil , floor can be used in this program
void main(List<String> args) {
  int a = 16;
  double b = sqrt(a); // return data type is double so we declare the result in double data type
  print(b);

  int c = 25;
  double d = cos(c);
  print(d);

  int z = 10;
  int x = 20;
  int y = add(10,20);
  print(y);
}

// libraries can be created in bin as well as a different library folder
// customized libraries has two methods in making
// method 1 - library 'library name'; and then in this library we can import packages, use it in different methods and then use it in a program for optimizing tasks

// in this program we have used math library - a built in library
// and
// we have used a user made library from lib folder in the project folder - lakshflutterproj
// you should never have any lib folder into your path and also not use .. 
