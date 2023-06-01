// top-level variable
int t=5;
// The variable defined outside all classes
// Top level nullable variables can be left unassigned at declartion

class A{
  //static variable
  static int s = 12;

  // instance variables
  double i =25;

  // lamba wala variable
  static final int temp = 5;
}

void randomfunction()
{
  // local variable
  int i;
  for(i=4;i<=3;i++)
  {
    print(i);
  }
}


// non nullable - int float string char - where the values assigned to variables of this data type are not null(zero)
// nullable - int? float? String? char?  - where values assigned are null.

/* Variable declaration similiar to java
 Data type variable name = value; */

 /* if no value is assigned to a variable
 then a default/garbage value will be assigned by dart */

// A non nullable variable cannot hold a null value
// if you want to declare a variable to null add a question mark to it 

/* If you fail to initialise a late variable and we try to use it
Then a run time error will occur */

// static variable - it cannot be initialized inside the constructor of a class
// local variable - can be initialized or non initialized while declartion

// var and dynamic


// Boolean data type has only two outputs - true and false
