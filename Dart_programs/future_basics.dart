/*
Quick review:

-A Future<T> instance produces a value of type T.
-If a future doesn’t produce a usable value, then the future’s type is Future<void>.
-A future can be in one of two states: uncompleted or completed.
-When you call a function that returns a future, the function queues up work to be done and returns an uncompleted future.
-When a future’s operation finishes, the future completes with a value or with an error.

Key terms:

Future: the Dart Future class.
future: an instance of the Dart Future class.

*/

// Future - async operations with one value only
import 'dart:async';

// the example shows how not to write async dart code
// running a program asynchronously i.e., executing the lesser time statements first and then executinf the other statements
String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order'; // instantly printed
}

// uncompleted future with a string return type
Future<String> fetchUserOrder() =>
    // Imagine that this function is more complex and slow.
    Future.delayed(
      const Duration(seconds: 7),
      () => 'Large Latte',
    );

// completed future with a value
Future<void> fetchUser() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds:5), () => print('Large Latte'));
}

// completed future with an error
Future<void> fetch() {
// Imagine that this function is fetching user info but encounters a bug
  return Future.delayed(const Duration(seconds: 11),
      () => throw Exception('Logout failed: user ID is invalid'));
}

void main()
{
  print(createOrderMessage());
  // fetchUserOrder();
  fetchUser();
  print("FETCHING USER ORDER");
  fetch();
}
// the desired output is not generatee bcoz of delay in time of the execution process of future
