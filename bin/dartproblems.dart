import 'dart:async';

/// named / required
/// {}
///

FutureOr greet({String name = "Magd ", required int age}) =>
    ("hello$name , aga $age");

//
String getUserData(String name, {required int age}) {
  print("hello$name , aga $age");
  return "name $name , age$age";
}

// void describe(String name, {int? age}) =>
//     "Name: $name, Age: ${age ?? 'unknown'}";

// Arrow Syntax Example
FutureOr add({int a = 20, int b = 20}) => a + b;

void main() {
  // stdout.write('plz ennter a name ');
  // String? nullableName; // Can be null
  // nullableName = stdin.readLineSync();
  // print(nullableName);
  // print(object);
  // print(greet1());

  print(greet(age: 20, name: ''));
  print('>>>>>>>>>>>>>>>>.');
  print(greet(age: 20, name: "Amgad"));
  print('>>>>>>>>>>>>>>>>.');

  print(getUserData('name', age: 20));
}

////
void applyFunction(int a, int b, Function operation) {
  print(operation(a, b));
}
