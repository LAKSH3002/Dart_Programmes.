/*
if-else
for loop
while loop
break/continue
switch case
assert
try,throw,catch,finally
*/

import 'dart:io';
// if-else
void main(List<String> args) 
{
  int a = 6;
  if (a.isOdd) {
    print("ODD NUMBER");
  } else {
    print("EVEN NUMBER");
  }
      // return data type is boolean
  int c = 7;
  if (c.isOdd) {
    print("ODD NUMBER");
  }

  // loops - for loop
  var list = [1,2,3];
  for (var i = 0; i < list.length; i++) {
    stdout.write(list[i]);
  }

  // for in
  for (var item in list) {
    print(item);
  }

  // for each
  var GeeksForGeeks = [1,2,3,4,5];
  GeeksForGeeks.forEach((var num)=> print(num)); 
  
  int i1=0;
  // while loop
  while (i1!=4) {
    stdout.write(i1);
    i1++;
  }
  // to break a loop - use break keyword
  // to continue - use continue keyword

  // switch case statements - like java and c/c++
  // switch case can only contain int, string or any other constant values
  // switch (expression) {
  //   case value:
      
  //     break;
  //   default:
  // }

  // enum condition in dart
  // enum condition {sunny , cloudy , drizzly}
  // condition = condition.sunny
  // print(condition.sunny == condition.sunny); prints true

  /* enum is used to encapsulate a specific value into a class
  enum class cannot be instantiated 
  it only exists through its possible values
  */

  // asserts - google it 
  // asserts , enum and condition.something
  
  // Exceptions
  /* 
  Try - catch - finally and throw */
}
// implementing Exceptions class
class Negativevalue implements Exception{
  final String message;
  Negativevalue({required this.message});
}