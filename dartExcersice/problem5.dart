 


 //Write a function that accepts a nullable int parameter and 
 //returns 0 if the value is null using null coalescing operator ??.
int  nullFunction(int ? a) =>a ??  0;

void main(){
print (nullFunction(null)); // Output: 0
print (nullFunction(20)); // Output: 20
}
