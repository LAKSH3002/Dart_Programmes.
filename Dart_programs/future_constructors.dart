import 'dart:async';

void main(List<String> args) 
 {
  print("start");

  Future(()=> 1).then(print);
  Future(()=> Future(() => 2)).then(print);

  Future.delayed(const Duration(seconds: 1),()=>3).then(print);
  Future.delayed(const Duration(seconds: 1),()=>Future(() => 4)).then(print);

  Future.value(5).then(print);
  Future.value(Future(() => 6)).then(print);

  Future.sync(() => 7);
  Future.sync(() => Future(() => 8)).then(print);

  Future.microtask(() => 9).then(print);
  Future.microtask(() => Future(() => 10)).then(print); // events of microtask queue's have priority

  Future(() => 11).then(print);
  Future(() => Future(() => 12)).then(print);
  
  // then- ?? , closure- ?? , future- ??
  // async - ?? , await - ?? 

  print("end");

}

// lines of code are read from the isolate from right to left

// read:

// Microtask:
// Event:
// output:
