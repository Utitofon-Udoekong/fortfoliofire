part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AppUser userModel,
    required bool isUserCheckedFromAuthService,
  }) = _AuthState;
  const AuthState._();

  factory AuthState.empty() => AuthState(
        userModel: AppUser.empty(),
        isUserCheckedFromAuthService: false,
      );

  bool get isLoggedIn => userModel != AppUser.empty();
}
