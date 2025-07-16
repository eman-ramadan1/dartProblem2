
void main() {
  List<int>filter = [1, 2, 3, 4, 5, 6];
  List<int> evens = filter.where((i) => i % 2 == 0).toList();  // using where to filter even numbers
  print(evens);
}
// Filtering a list to get only even numbers