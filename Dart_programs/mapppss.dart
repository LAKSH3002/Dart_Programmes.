/* map is an object that associates keys and values
Both maps and keys can be any type of object
*/
void main(List<String> args) 
{
  // 1st method - dirct method
  var map = {1,2}; 

  // 2nd method - using map literals
  var map2 = {
    1:2,
    2:4,
    3:6, 
  };
  print(map2);

  // map creation using default constructor
  var map3 = Map(); 
  print(map3);

  // if we try to access an element which is not in the map
  // then null will be the output

  // adding elements in the map
  var map4 = {};
  map4.addEntries([const MapEntry(1, 2)]);
  print(map4);

  
}
