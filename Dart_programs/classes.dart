ldld() => [1,2,3,4];
lddd() => const[2,8,9,0];

class A
{ 
  // class invisibly inherits the object class

  // instance variables
  late String a;
  late int b;
  late double c;
  // without the late keyword it shows an error that non nullable instnace variable must be initialized

}

// class for this keyword
class Mobile
{
  late String mob;
  car(String mob)
  {
  // use of this keyword in programs
  // it represent an implicit object pointing to the current class object
    this.mob = mob;
    print("the mobile is : ${mob}");
  }
}

// class for constructors definitions
class Consttt
{
  // can a single class have several constructors defined in it - NO
  // in dart - constructor overloading is not supported
  // default constructor - constructor with no parameters
  Consttt()
  {
    print("THIS IS  A DEFAULT CONSTRUCTOR");
    print("IT IS A NEW CONSTRUCTOR");
  }
}
class Consttt2
{
  // parameterised constructor
  Consttt2(int a)
  {
    print("HELLO THIS IS PARAMTERISED CONSTRUCTOR");
    int c = 10;
    int d = 20;
    print(c+d);
  }
}
class Consttt3
{
// named constructor
Consttt3.c1(int a)
{
  print("NAMED CONSTRUCTOR 1 WITH ONE PARAMTERS");
}
Consttt3.c2(int a,int b)
{
  print("NAMED CONSTRUCTOR 2 WITH TWO PARAMETERS");
}
}

void main(List<String> args) 
{
  // hashcode
  // final variable
  final int a = 5;
  print(a);
  final aa = 10;
  print(aa);

  // const variable
  const b = 10;
  const int bb = 20;

  // without const variable
  var ld1 = ldld();
  var ld2 = ldld();

  //printing result
  print(ld1=ld2);

  // with const variable
  var ld0 = lddd();
  var ld3 = lddd();

  // printing result
  print(ld0==ld3);

  A lak = new A();
  lak.a = "laksh";
  lak.b = 10;
  lak.c = 10.0;
  print("name = ${lak.a}");

  Mobile m = Mobile();
  m.car("M101");

  // calling default constructor 
  Consttt c = Consttt();

  // calling paramterised constructors
  Consttt2 c1 = Consttt2(1);

  //calling named constructors
  Consttt3 l1 = Consttt3.c1(5);
  Consttt3 l2 = Consttt3.c2(10, 12);
}
  // break and continue statements
  // instance variables and methods 
  // late and final declaration in class - done 
