part of 'sign_up_form_phone_cubit.dart';

@freezed
class SignUpFormPhoneState with _$SignUpFormPhoneState {
  const factory SignUpFormPhoneState({
    required String phoneNumber,
    required String smsCode,
    required Option<AuthFailure> failureOption,
    required String verificationId,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _SignUpFormPhoneState;
  const SignUpFormPhoneState._();
  factory SignUpFormPhoneState.initial() => SignUpFormPhoneState(
        phoneNumber: Phone(''),
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
