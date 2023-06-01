// Maps and runes
/* map is an object that associates keys and values
Both maps and keys can be any type of object
*/
import 'dart:core';
void main(List<String> args) 
{
  var map = {1,2}; // 1st method - direct method

  // method 2 - map declaration using map literals
  var map2 = {
    1:2,
    2:4,
    3:6, 
  };

  print(map2);
  print(map2[3]);

  var map3 = Map(); // map creation using default constructor
  print(map3); // empty map will be printed

  map3[1] = 4;
  print(map3);
  map3[2] = 9;
  print(map3); // insertion of values in a map

  // if used strings (different strings gets concatenated)

  // if we try to access an element which is not in the map
  // then null will be the output

  // adding elements in the map
  var map4 = {};
  map4.addEntries([const MapEntry(1, 2)]);
  print(map4);

  //creating map using map constructor
  var map5 = new Map();
  map5[0] = 1;
  map5[1] = 2;
  map5[2] = 3;
  map5[3] = 5;

  print(map5[0]);
  print(map5);


  // Runes in dart
  // rune can be defined as an integer used to represent any unicode code point.
  /*
  three ways to access runes
  1 - using String.codeUnits
  2 - using string.Runes
  3 - using string.codeUnitAt()
  */
  String ll1 = 'Laksh doshi here';
  print(ll1.codeUnits);

  // String.runes extends iterable
  print(ll1.codeUnitAt(4));

   String gfg="LAKSHHH";
   gfg.runes.forEach((int x) { 
      var ch=new String.fromCharCode(x); 
      print(ch); 
   }); 
}
