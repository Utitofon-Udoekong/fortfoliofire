import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  AuthUserModel toDomain() {
    final AuthUserModel emptyModel = AuthUserModel.empty();
    return emptyModel.copyWith(
      id: UniqueId.fromUniqueString(uid),
      phoneNumber: Phone(phoneNumber!),
    );
  }
}
