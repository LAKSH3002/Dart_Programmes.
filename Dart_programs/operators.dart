// operators in dart programming language
// operators has precedance
// Types of operators - many
// assignment has the least priority
// dart identifiers can contain $
// It is traditionally reserved for generated code
// inc and dec operators
void main(List<String> args) {
  // inc and dec operators
  // equality and relational operators
  var list1 = [1,2,3];
  var list2 = [1,2,3];
  print(list1 == list2);

  // the == can be overriden in the same cases
  print(identical(list1, list2));
  int a0 = 1;

  // he is going too deep - hashcode and overriden methods
  // Type test operators  - as is is! - go to google and learn it
  var a3 = a0 ~/= 3;
  print(a3);

 // Logical operators - AND OR NOT NAND NOR !EXP 
 // Bit operators
 var a = 6; // 0110
 var b = 5; // 0101

 print(a & b); // 0100 = 4
 print(a | b); // 0111 = 7
 print(a ^ b); // 0011 = 3
 print(a << b);// 1100 = 12
 print(a >> b);// 0011 = 3
 print(~a);

 // conditional operators  - short term of if else - ?:
}
