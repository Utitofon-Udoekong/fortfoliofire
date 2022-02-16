part of 'profile_cubit.dart';
@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isVerified,
    required String id,
    required String email,
    required String phone,
    required String displayName,
  }) = _ProfileState;
  const ProfileState._();

  factory ProfileState.intitial() => ProfileState(
        isVerified: false,
        id: FirebaseAuth.instance.currentUser!.uid,
        email: FirebaseAuth.instance.currentUser!.email.toString(),
        phone: FirebaseAuth.instance.currentUser!.phoneNumber.toString(),
        displayName: FirebaseAuth.instance.currentUser!.displayName.toString().toUpperCase(),
      );
}
