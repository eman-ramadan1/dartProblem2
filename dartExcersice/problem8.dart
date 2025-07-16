
void main(){ //map transform

  // Using map to transform a list of integers into their squares
  // and converting the result back to a list.

List<int> numbers = [1, 2, 3, 4];
  List<int> squares = numbers.map((n) => n * n).toList();
  print(squares);

}