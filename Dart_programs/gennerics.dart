// dart is a type safe language
// a way to code a class or function so that it works with a range of data types instead of just one, while remaining type safe.

// <T> type , <R> return

// by use of generics , we make a collection to hold homogeneous values
// by use of generics , type saftey is ensured in dart

// we can use list , map , set and queue generics to implement type safety in dart

import 'dart:collection';

class Tuple
{
  final int a;
  final int b;
  final int c;
  late String n;

  Tuple(this.a,this.b,this.c);

  // getter method - to get or recieve the value from the function
  String get getname
  {
    return n;
  }
  // setter method - to set the value of the variable.
  set setname(String name) // String - gives an error message
  {
    n = name;
  }
}
void main(List<String> args) 
{
  // list as generic type
  List<int> listex = [];
  listex.add(10);

  // set as generic type
  Set<int> s = new Set();
  s.add(12);

  // map as generic type
  Map<String,int> mp = {'laksh': 57, 'Vyomesh': 56};

  //queues as generic type
  Queue<int> q = new Queue();
  q.addFirst(20);
  q.add(12);
  q.addLast(21);

  print(listex);
  print(s);
  print(mp);
  print(q);

  Tuple t  = Tuple(1, 2, 3);

  Tuple tt = Tuple(1,4,7); // here was the error
  tt.setname = "Imagica";
  print("Welcome to ${tt.getname}");

  // 5 hour 35 mins to 5 hour 47 mins
  // data structures in dart - practice it - stack , queue, tree
}
