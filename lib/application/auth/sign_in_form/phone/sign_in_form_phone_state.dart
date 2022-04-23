part of 'sign_in_form_phone_cubit.dart';

@freezed
class SignInFormPhoneState with _$SignInFormPhoneState {
  const factory SignInFormPhoneState({
    required String phoneNumber,
    required String smsCode,
    required Option<AuthFailure> failureOption,
    required String verificationId,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _SignInFormPhoneState;
  const SignInFormPhoneState._();
  factory SignInFormPhoneState.initial() => SignInFormPhoneState(
        phoneNumber: "",
        smsCode: "",
        failureOption: none(),
        verificationId: "",
        isSubmitting: false,
        showErrorMessages: false,
      );
 bool get displayNextButton => verificationId.isEmpty && !isSubmitting;
  bool get displaySmsCodeForm => verificationId.isNotEmpty;
  bool get displayLoadingIndicator => !displayNextButton && !displaySmsCodeForm;
}
