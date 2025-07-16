
import 'dart:async';

Future<void > fetchData()async{
  await Future.delayed(Duration(seconds: 2));
  print('Hi !');

}
void main(){
fetchData();

}