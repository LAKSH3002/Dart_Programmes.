// program for dynamic run type , hashcode
void main(List<String> args) 
{
  var vi = 5;
  var vs = 'Example';
  var vl = [1, 2, 3];

  print('var function type\n');
  print(vi.runtimeType);
  print(vs.runtimeType);
  print(vl.runtimeType);

  dynamic d1 = 5;
  dynamic ds = 'Example';
  dynamic dl = [1,2,3];

  print('Dynamic function type\n');
  print(d1.runtimeType);
  print(ds.runtimeType);
  print(dl.runtimeType);

  d1 = 5.0;
  print(d1.runtimeType); 

  var x; // dynamic x 
  // x = 5;
  print(x.runtimeType); // output is null

  // dynamix type is nullable
}

// this was the differnece of var and dynamic variable
