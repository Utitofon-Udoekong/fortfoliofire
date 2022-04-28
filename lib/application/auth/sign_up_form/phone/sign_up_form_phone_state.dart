part of 'sign_up_form_phone_cubit.dart';

@freezed
class SignUpFormPhoneState with _$SignUpFormPhoneState {
  const factory SignUpFormPhoneState({
    required String phoneNumber,
    required String smsCode,
    required String verificationId,
    required String failure,
    required String success,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _SignUpFormPhoneState;
  const SignUpFormPhoneState._();
  factory SignUpFormPhoneState.initial() => const SignUpFormPhoneState(
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
