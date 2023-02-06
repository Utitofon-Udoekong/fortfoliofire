part of 'security_cubit.dart';

@freezed
class SecurityState with _$SecurityState {
  const factory SecurityState({
    required String emailAddress,
    required String pin,
    required String otp,
    required String sentOtp,
    required bool showSnackbar,
    required bool pinExists,
    required bool biometricsExists,
    required String failure,
    required String success,
  }) = _SecurityState;
  const SecurityState._();
  factory SecurityState.empty() => const SecurityState(
        emailAddress: "",
        pin: "",
        otp: "",
        sentOtp: "",
        failure: "",
        success: "",
        showSnackbar: false,
        pinExists: false,
        biometricsExists: false
      );
  bool get isValidState => emailAddress.isNotEmpty;
}
