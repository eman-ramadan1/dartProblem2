import 'package:dartproblems/dartproblems.dart' as dartproblems;
 
import 'dart:io';




enum UserRole { admin, guest, member }

class User {
  String? firstName;
  String? lastName;
  dynamic role;

  User({this.firstName, this.lastName, this.role});
}

String formatUserProfile(User user) {
  StringBuffer fullName = StringBuffer();
  fullName.write(user.firstName ?? '');

  fullName.write(user.lastName != null ? ' ${user.lastName}' : '');

  UserRole userRole = user.role is UserRole ? user.role : UserRole.guest;
  String roleStr = userRole == UserRole.admin
      ? "Admin"
      : userRole == UserRole.member
          ? "Member"
          : "Guest";

  return "Name: ${fullName.toString().trim()}, Role: $roleStr";
}


void main() {
  print(formatUserProfile(User(
    firstName: "John",
    lastName: "Doe",
    role: UserRole.admin,
  ))); // Name: John K. Doe, Role: Admin

  print(formatUserProfile(User(firstName: "Alice", role: "unknown"))); // Name: Alice, Role: Guest
}
