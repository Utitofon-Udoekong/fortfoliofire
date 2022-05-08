part of 'sign_in_form_phone_cubit.dart';

@freezed
class SignInFormPhoneState with _$SignInFormPhoneState {
  const factory SignInFormPhoneState({
    required String phoneNumber,
    required String smsCode,
    required String verificationId,
    required String failure,
    required String success,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _SignInFormPhoneState;
  const SignInFormPhoneState._();
  factory SignInFormPhoneState.initial() => const SignInFormPhoneState(
        phoneNumber: "",
        smsCode: "",
        verificationId: "",
        failure: "",
        success: "",
        isSubmitting: false,
        showErrorMessages: false,
      );
 bool get displayNextButton => verificationId.isEmpty && !isSubmitting;
  bool get displaySmsCodeForm => verificationId.isNotEmpty;
  bool get displayLoadingIndicator => !displayNextButton && !displaySmsCodeForm;
}
