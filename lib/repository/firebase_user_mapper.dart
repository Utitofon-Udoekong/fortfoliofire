import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/models/user.dart';

extension FirebaseUserDomainX on User {
  AppUser toDomain() {
    return AppUser(
      uid: uid,
      firstname: "",
      lastname: "",
      email: email!,
      createdAt: DateTime.now(),
      isVerified: false,
      phone: phoneNumber!,
      balance: 0,
      role: Roles.user,
    );
  }
}
