import 'dart:async';

import 'async_await.dart';

void main(List<String> args) 
{
print('1');
scheduleMicrotask(() => print('2'));

Future.delayed(const Duration(seconds: 1),()=> print('3'));

Future(() => print('4')).then((_) => print('5')).then((_) {
  print('6');
  scheduleMicrotask(()=>print('7'));
}).then((_) => print('8'));

scheduleMicrotask(() => print('9'));

Future(() => print('10')).then((_) => Future(() => print('11')))
.then((_) => print('12'));

Future(() => print('13'));
scheduleMicrotask(() => print('14'));
print('15');

// microtask -  14 9 2 - right to left printing    7 
//* event - 3 f(11) 13 10 (linked to other then) 4(linked to other then) 

//? output - 1 15 2 9 14 4 5 6 8 7 10 13 11 12 3
}
