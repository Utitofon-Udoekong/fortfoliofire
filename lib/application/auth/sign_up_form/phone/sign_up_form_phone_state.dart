part of 'sign_up_form_phone_cubit.dart';

@freezed
class SignUpFormPhoneState with _$SignUpFormPhoneState {
  const factory SignUpFormPhoneState({
    required Phone phoneNumber,
    required String smsCode,
    required Option<AuthFailure> failureOption,
    required Option<String> verificationIdOption,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _SignUpFormPhoneState;
  const SignUpFormPhoneState._();
  factory SignUpFormPhoneState.initial() => SignUpFormPhoneState(
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
