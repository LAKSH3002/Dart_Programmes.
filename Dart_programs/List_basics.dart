void main(List<String> args) 
{
  List<int> l = [1,23,4,5];
  print(l[0]);
  List<bool> bl = [true,false,true];

  // list can store int and double both by the following means
  List<dynamic> iidd = [1,2.4,7];
  List<num> intanddouble = [1,2.3,4.5,8];  

  // list that can be also store string
  List<Object> complexlist = [2,3.0,'hey',true,Null];
    
  var integvalue = complexlist[0] as int;
  var doubvalue = complexlist[1] as double;
  var strvalue = complexlist[2] as String;
  var boolvalue = complexlist[3] as bool;
  // var nvalue = complexlist[4] as null;

  List<int> a = [1,2,3]; // non nullable list containing non nullable values
  List<int?> b = [1,2,null]; // non nullable list with null object in it
  List<int>? c = [3,4,5]; // nullable containing non nullable objects in it
  List<int?>? d = [1,2,null]; // nullable containing nullable objects

  // methods of list
  // filled , empty , generate

  // List declartion
  // fixed list
  List? ll1 = List.generate(4, (ll1) => null, growable: false);
  ll1[0] = 'Laksh';
  ll1[1] = 'likes';
  ll1[2] = 'gouri';
  print(ll1);

  // growable list - generic type
  List<int> l3 = [1,6,7,9,0]; 
  var laksh1 = ['laksh', 'went', 'to', 'Imagica', '066'];
  print(laksh1);
  print('\n');
  laksh1.add('Everyday'); // for adding multiple items use addAll
  print(laksh1);

  l3.insert(4, 12);
  l3.insertAll(3, [5,7,9]);
  print(l3);
  
  // Types of list
  // 2-d and 3-d list
  // getting errors and not understanding how to form it
   
}
