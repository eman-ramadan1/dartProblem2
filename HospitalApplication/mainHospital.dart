
import 'HospitalClass.dart';
void main() {
  var system = HospitalSystem();

  system.addDoctor(Doctor("Ahmed", "D1", "Cardiology"));
  system.addPatient(Patient("Ali", "P1", 25));

  system.book("P1", "D1", "10:00 AM");
  system.showAll();
  system.showUsers();
  print('//////////////////////////////////////////////////');
  var system1 = HospitalSystem();

  system1.addDoctor(Doctor("eman", "D2", "Cardiology"));
  system1.addPatient(Patient("ahmed", "P2", 22));

  system1.book("P2", "D2", "10:00 AM");
  system1.showAll();
  system1.showUsers();
}
