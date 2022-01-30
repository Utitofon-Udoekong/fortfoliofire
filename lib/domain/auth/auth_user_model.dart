import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_model.freezed.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required UniqueId id,
    required Phone phoneNumber,
  }) = _AuthUserModel;

  const AuthUserModel._();

  factory AuthUserModel.empty() => AuthUserModel(
        id: UniqueId.fromUniqueString(''),
        phoneNumber: Phone(''),
      );
}
