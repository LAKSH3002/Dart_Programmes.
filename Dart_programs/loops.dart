void main(List<String> args) {
  int a = 6;
  if (a.isOdd) {
    print("ODD NUMBER");
  } else {
    print("EVEN NUMBER");
  }
      // return data type is boolean
  int c = 7;
  if (c.isOdd) {
    print("ODD NUMBER");
  }

  // loops - for loop
  var list = [1,2,3];
  for (var i = 0; i < list.length; i++) {
    stdout.write(list[i]);
  }

  // for in
  for (var item in list) {
    print(item);
  }
  int i1=0;
  // while loop
  while (i1!=4) {
    stdout.write(i1);
    i1++;
  }
