part of 'security_cubit.dart';

@freezed
class SecurityState with _$SecurityState {
  const factory SecurityState({
    required String emailAddress,
    required String pin,
    required bool showSnackbar,
    required bool pinExists,
    required String failure,
    required String success,
  }) = _SecurityState;
  const SecurityState._();
  factory SecurityState.empty() => const SecurityState(
        emailAddress: "",
        pin: "",
        failure: "",
        success: "",
        showSnackbar: false,
        pinExists: false
      );
  bool get isValidState => emailAddress.isNotEmpty;
}
