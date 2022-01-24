import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/auth/user.dart';
import 'package:fortfolio/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  AppUser toDomain() {
    return AppUser(id: UniqueId.fromUniqueString(uid));
  }
}