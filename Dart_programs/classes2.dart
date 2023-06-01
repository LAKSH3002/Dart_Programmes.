// OOPS 

// 1 - Inheritance
// extends keyword
// a class by deault inherits the object class
// in dart only one class can be extended by another class
// only single inheritance is possible in dart
// perform polymorphism
// covariant keyword
// superclass can be accessed using the super keyword
class Animal
{ 
  // base class 
  late String n;
  void props()
  {
    print("all animals are living beings");
    print("all animals can eat food");
  }
  void name()
  {
    print("there are diff categories of animals");
  }
}
class Dog extends Animal
{
  void features()
  {
    print("All dogs have 4 legs");
    print("they have a sharp teeth");
  }
 String n1 = "Tommy";
 @override
  void props()
 {
  print("DOG IS A LIVING BEING THAT ONLY BARKS");
 }
 void life()
 {
  print("A dog has a life span of 10-12 years");
 }
}
class Tommy extends Dog
{
  @override
  void features()
  {
    print("Tommy is black in colour");
    print("Tommy is a small dog - pug");
  }
 @override
  void props()
 {
  print("TOMMY IS A DOG THAT CAN BARK AND BITE");
 }
 void owner()
 {
  print("tommy ek paltu doggie hai");
 }
}
void main(List<String> args)
{
Tommy t = Tommy();
t.features();
Dog d = Dog();
d.props(); 
d.life();
t.name();
}
