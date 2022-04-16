part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel userModel,
    required bool isUserCheckedFromAuthFacade,
    required bool isloggedIn
  }) = _AuthState;
  const AuthState._();

  factory AuthState.empty() => AuthState(
        userModel: AuthUserModel.empty(),
        isUserCheckedFromAuthFacade: false,
        isloggedIn: false
      );

  bool get isLoggedIn => isloggedIn;
}
