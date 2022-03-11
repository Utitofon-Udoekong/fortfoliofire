part of 'security_cubit.dart';

@freezed
class SecurityState with _$SecurityState {
  const factory SecurityState({
    required String emailAddress,
    required bool showSnackbar,
    required String failure,
    required String success,
  }) = _SecurityState;
  const SecurityState._();
  factory SecurityState.empty() => const SecurityState(
        emailAddress: "",
        failure: "",
        success: "",
        showSnackbar: false
      );
  bool get isValidState => emailAddress.isNotEmpty;
}
