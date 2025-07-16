
void main(){

List<int> numbers = [1, 2, 3, 4];
 List<int> odd= numbers.where((i) => i % 2 != 0).toList(); // using where to filter odd numbers
int result= odd.reduce((a, b) => a + b); // using reduce to sum the odd numbers
print(result); // prints the sum of the odd numbers

}