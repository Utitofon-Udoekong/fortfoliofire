part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel userModel,
    required bool isUserCheckedFromAuthFacade,
  }) = _AuthState;
  const AuthState._();

  factory AuthState.empty() => AuthState(
        userModel: AuthUserModel.empty(),
        isUserCheckedFromAuthFacade: false,
      );

  bool get isLoggedIn => userModel.firstName.isNotEmpty;
}
