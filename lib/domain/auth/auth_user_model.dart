import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_model.freezed.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required String id,
    required String displayName,
    required String phoneNumber,
    required String firstName,
    required String lastName,
    required double balance,
    required String email,
    required bool isVerified,
    required bool isAccountActive,
    required DateTime createdat,
    DateTime? startDate,
    DateTime? deleteDate,
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
        isAccountActive: true,
        createdat: DateTime.fromMillisecondsSinceEpoch(0),
        displayName: '',
      );

}
