// lists - collections containing ordered non-unique objects
// sets - collections containing unordered unique objects
// sets denoted by curly braces , lists by squared
// sets are generic

void main(List<String> args) {
  var listt = [];
  listt.add(4);
  listt.add(3);
  listt.add(4);
  listt.add(2);
  print(listt);

  var set = <int>{};
  set.add(4);
  set.add(3);
  set.add(4);
  set.add(2);
  print(set); // the outuput generated will have only one value of 4

  // sets can be created using the default set constructor
  var set1 = Set();
  print(set1);

  // can be created by mentioning explicitly mentioning its type and its generic type
  Set<String> set2 = {'hey','WCKD'};
  print(set2);

  //can be created using var 
  var set3 = {1,2,3};
  print(set3);

  var set4 = <int>{};
  print(set4);

  // this is a set
  var set5 = {1,2,3};
  // this is a map
  var map5 = {};

  // exp on set1
  print(set3.elementAt(2));
  print(set3.contains(5));
  print(set3.remove(1));
  print(set3.add(8));
  print(set3.add(12));
  print(set3);

  // 3 operations on dart
  // Finding Union
  print("Union of two sets is ${set1.union(set3)} \n");
   
  // Finding Intersection
  print("Intersection of two sets is ${set1.intersection(set3)} \n");
   
  // Finding Difference
  print("Difference of two sets is ${set1.difference(set3)} \n");

// .add , .addAll , .elementAt , .contains , .remove , .clear
// ...set - meaning
// sets can be intersected with other sets
 
}
