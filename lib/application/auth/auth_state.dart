part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel userModel,
    required bool isUserCheckedFromAuthFacade,
    required int dollarToNaira
  }) = _AuthState;
  const AuthState._();

  factory AuthState.empty() => AuthState(
        userModel: AuthUserModel.empty(),
        isUserCheckedFromAuthFacade: false,
        dollarToNaira: 0
      );

  bool get isLoggedIn => userModel.email.isNotEmpty;
}
