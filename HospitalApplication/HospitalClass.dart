
// (Abstraction + Polymorphism + static member)
abstract class User {
  static int totalUsers = 0;

  void displayInfo();
  set name(String n);
}

class Person extends User {
  String _name;
  String _id;

  Person(this._name, this._id);

  String get name => _name;
  String get id => _id;

  @override
  set name(String n) {
    _name = n;
  }

  @override
  void displayInfo() {
    print(" Person: $_name, ID: $_id");
  }
}

class Patient extends Person {
  int _age;

  Patient(String name, String id, this._age) : super(name, id) {
    User.totalUsers++;
  }

  int get age => _age;

  @override
  void displayInfo() {
    print(" Patient: $name, Age: $_age, ID: $id");
  }
}

class Doctor extends Person {
  String _specialty;

  Doctor(String name, String id, this._specialty) : super(name, id) {
    User.totalUsers++;
  }

  String get specialty => _specialty;

  @override
  void displayInfo() {
    print(" Doctor: $name, Specialty: $_specialty, ID: $id");
  }
}

class Appointment {
  Patient patient;
  Doctor doctor;
  String time;

  Appointment(this.patient, this.doctor, this.time);

  void show() {
    print(" ${patient.name} has appointment with Dr. ${doctor.name} at $time");
  }
}

class HospitalSystem {
  List<Patient> patients = [];
  List<Doctor> doctors = [];
  List<Appointment> appointments = [];

  void addPatient(Patient p) => patients.add(p);
  void addDoctor(Doctor d) => doctors.add(d);

  void book(String pid, String did, String time) {
    var p = patients.firstWhere((i) => i.id == pid);
    var d = doctors.firstWhere((i) => i.id == did);
    appointments.add(Appointment(p, d, time));
    print(" Appointment booked.");
  }

  void showAll() {
    print("\n All Appointments:");
    for (var a in appointments) {
      a.show();
    }
  }

  void showUsers() {
    print("\n All Users Info:");
    for (var d in doctors) d.displayInfo();
    for (var p in patients) p.displayInfo();
    print("\n Total users in system: ${User.totalUsers}");
  }
}