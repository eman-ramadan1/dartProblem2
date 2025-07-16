
// This code demonstrates how to use the null-aware operator in Dart
// to provide a default value when accessing a map.

void main(){

Map<String , String> user = {
  'name': 'John',
  'age': '30',
  'city': 'New York'
};

print(user['name'] ??'defult'); // prints 'John'

}