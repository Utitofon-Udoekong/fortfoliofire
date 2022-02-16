import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:fortfolio/domain/user/user.dart';

extension FirebaseUserDomainX on User {
  AppUser toDomain() {
    final AppUser emptyModel = AppUser.empty();
    return emptyModel.copyWith(
      id: UniqueId.fromUniqueString(uid),
      phone: Phone(phoneNumber!),
    );
  }
}
