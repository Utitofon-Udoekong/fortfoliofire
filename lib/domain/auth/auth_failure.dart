import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPassword() = InvalidEmaiLAndPassword;
  const factory AuthFailure.invalidPhoneNumber() = _InvalidPhoneNumber;
  const factory AuthFailure.tooManyRequests() = _TooManyRequests;
  const factory AuthFailure.deviceNotSupported() = _DeviceNotSupported;
  const factory AuthFailure.smsTimeout() = _SmsTimeout;
  const factory AuthFailure.sessionExpired() = _SessionExpired;
  const factory AuthFailure.invalidVerificationCode() =
      _InvalidVerificationCode;
}