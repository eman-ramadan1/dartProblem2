
A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

# dartProblem2


 Object-Oriented Programming (OOP) Concepts in my Dart Project
 1-Abstraction : is a concept in OOP to  hides internal implementation and shows only necessary features
 and i use this concept in class:

 abstract class User {
  static int totalUsers = 0;

  void displayInfo();
  set name(String n);
}

 2- Encapsulation : is a concept of protect and  bundling of data and restricting direct access to it using .

class Person extends User{
  String _name;
  String _id;

  Person(this._name, this._id);

  String get name => _name;
  String get id => _id;

  @override
  set name(String n) {
    _name = n;
  }
}  in this class i declare a two private variables and i accssed it through
get(); and set() functions;

3- Inheritance :  this concept in oop mean to a child to He inherits all the perent  characteristics in addition to his own.
and my code contain two class extdend from another class

class Patient extends Person (){ }
class Doctor extends Person (){ }

 both Patient and Doctor inherit name, id, and displayInfo() methods.


 4-Polymorphism : means that the same method can behave differently depending on the object

 @override
void displayInfo() { ... }  

Both Patient and Doctor override the displayInfo() method in their own way.

When displayInfo() is called on a User, Dart will run the correct version depending on the actual type (Patient or Doctor).

 6- Static Member : this concept mean  a variable or a method are   shared across all instances

 static int totalUsers = 0; in my code mean that every patint or doctor are add to my system



 and finally this a sample output of my code ....
 
 Appointment booked.

All Appointments:
John has appointment with Dr. Smith at 10:00 AM

All Users Info:
Doctor: Smith, Specialty: Cardiology, ID: D1
Patient: John, Age: 30, ID: P1

Total users in system: 2




