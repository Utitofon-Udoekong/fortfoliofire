part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String failure,
    required String success,
    required String smsCode,
    required String verificationId,
    required bool loading,
  }) = _ProfileState;
  factory ProfileState.initial() => const ProfileState(
    firstName: "",
    lastName: "",
    email: "",
    phoneNumber: "",
    failure: "",
    success: "",
    smsCode : "",
    verificationId: "",
    loading: false,
  );
}
