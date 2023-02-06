part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel userModel,
    required bool isUserCheckedFromAuthFacade,
    required int buyPrice,
    required int sellPrice,
    required double btcPrice,
  }) = _AuthState;
  const AuthState._();

  factory AuthState.empty() => AuthState(
        userModel: AuthUserModel.empty(),
        isUserCheckedFromAuthFacade: false,
        buyPrice: 0,
        sellPrice: 0,
        btcPrice: 0,
      );

  bool get isLoggedIn => userModel.email.isNotEmpty && userModel.firstName.isNotEmpty && userModel.lastName.isNotEmpty;
  bool get isAccountActive => userModel.isAccountActive && userModel.status == "Enabled";
}
