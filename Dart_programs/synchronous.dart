// synchronous program - it will run the statements one after the other in propoer format
void main(List<String> args) 
{
  // sum(1, 2);
  // print('sum(1,2)---> ${sum(1,2)}');
  final a = showNormal(10);
  final b = showGenerator(5);
  print(b);
}
int sum(int a, int b) => a+b;

List<int> showNormal(int n)
{
print('Normal started');
final list = <int>[];
for (var i = 1; i <= n; i++) {
  print('i -> $i');
  list.add(i);
}
return list;
}

Iterable<int> showGenerator(int n) sync* // lazy collection
{
  for (var i = 1; i <=n ; i++) {
    yield i;
  }
}
// generator functions

// iterables are lazy loaded
// iterables generate just the right amount of items they need
// yield* method
