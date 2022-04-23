part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber
  }) = _ProfileState;
  factory ProfileState.initial() => const ProfileState(
    firstName: "",
    lastName: "",
    email: "",
    phoneNumber: ""
  );
}
