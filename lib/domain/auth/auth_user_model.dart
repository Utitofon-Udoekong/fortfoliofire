import 'package:fortfolio/domain/auth/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_model.freezed.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required String id,
    required String phoneNumber,
    required String firstName,
    required String lastName,
    required double balance,
    required String email,
    required bool isVerified,
    required Status status,
    required DateTime createdat,
  }) = _AuthUserModel;

  const AuthUserModel._();

  factory AuthUserModel.empty() => AuthUserModel(
        id: '',
        phoneNumber: '',
        email: '',
        balance: 0,
        firstName: '',
        lastName: '',
        isVerified: false,
        createdat: DateTime.fromMillisecondsSinceEpoch(0),
        status: Status.processing
      );

  String get statusString => status.toCustomString();
}
