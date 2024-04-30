// Basic Dart Program
// void main() is the starting point where the execution of your program begins.
// Every program starts with a main function.
// The curly braces {} represent the beginning and the ending of a block of code.
// print(“Hello World!”); prints Hello World! on screen.
// Each code statement must end with a semicolon
import 'dart:io';

void main(List<String> args) {
  print("Hello World");

  for (var i = 1; i <= 4; i++) {
    print('Hello $i');
  }
  var name = "Laksh";
  print(name);

  // To take input we use the following method
  print('Enter 1st Number');
  int number1 = int.parse(stdin.readLineSync()!);
  print("THE FIRST NUMBER INPUT IS");
  print(number1);

  print("Enter 2nd Number");
  int number2 = int.parse(stdin.readLineSync()!);
  print("THE SECOND NUMBER INPUT IS");
  stdout.write(number2);

  // stdout.write - to Print things in a single line.
}
