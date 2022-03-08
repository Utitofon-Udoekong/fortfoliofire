import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failure.freezed.dart';
@freezed
class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.serverError() = ServerError;
  const factory FirestoreFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory FirestoreFailure.invalidEmail() = InvalidEmail;
  const factory FirestoreFailure.userNotFound() = UserNotFound;
  const factory FirestoreFailure.tooManyRequests() = TooManyRequests;
  const factory FirestoreFailure.deviceNotSupported() = DeviceNotSupported;
  const factory FirestoreFailure.emailNotVerified() = EmailNotVerified;
}
