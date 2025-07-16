
//sum of all elements in a list using reduce
void main(){

List<int>numbers = [1, 2, 3, 4];
 int sum=numbers.reduce((a , b) => a+b); // reduce=> combine all list element in one value
 // a, b => are first element and second element in the list
 //reduce=> add 1 and 2 element then add the result to the third element and so on

 print(sum); // prints the sum of the elements in the list
}
 // Using reduce to sum the elements of the list