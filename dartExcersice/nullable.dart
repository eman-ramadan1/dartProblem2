
//nullable => in dart by default all variables are non-nullable
// If you want to allow a variable to be null you have to use the nullable type by adding a ? after the type


void main() {
  String? email = null; //  with (?) we can assign null to the variable
  print(email);         // print null

  email = "eman@example.com"; // now we assign a value to the variable
  print(email);         // eman@example.com

//////////////////////second example/////////////////////
  String? name1 = null;

  // name1='Eman';
print(  name1?.length); //  TO Solve this error we can use :

// if (name != null) 

// name?.length    =>>  //print null if name is null==> null-aware operators

// name ?? "Default" =>> print name if not null otherwise print "Default"  ==> null check



}
//Test cases///////////
//1.. nuullable variable

// String? city;
// print(city); // Output: null

//2.. assign a value later

// String? city;
// city = "Cairo";
// print(city); // Output: Cairo

//3.. 

// String? name = null;
// print(name .length); // error



