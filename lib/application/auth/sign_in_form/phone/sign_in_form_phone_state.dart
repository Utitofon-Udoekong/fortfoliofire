part of 'sign_in_form_phone_cubit.dart';

@freezed
class SignInFormPhoneState with _$SignInFormPhoneState {
  const factory SignInFormPhoneState({
    required Phone phoneNumber,
    required String smsCode,
    required Option<AuthFailure> failureOption,
    required Option<String> verificationIdOption,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _SignInFormPhoneState;
  const SignInFormPhoneState._();
  factory SignInFormPhoneState.initial() => SignInFormPhoneState(
        phoneNumber: Phone(''),
        smsCode: "",
        failureOption: none(),
        verificationIdOption: none(),
        isSubmitting: false,
        showErrorMessages: false,
      );
  bool get displayNextButton => verificationIdOption.isNone() && !isSubmitting;
  bool get displaySmsCodeForm => verificationIdOption.isSome();
  bool get displayLoadingIndicator => !displayNextButton && !displaySmsCodeForm;
}
