part of 'sign_in_form_phone_bloc.dart';

@freezed
class SignInFormPhoneState with _$SignInFormPhoneState {
  const factory SignInFormPhoneState({
    required Phone phoneNumber,
    required String smsCode,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
  }) = _SignInFormPhoneState;

  factory SignInFormPhoneState.initial() => SignInFormPhoneState(
    phoneNumber: Phone(''),
    smsCode: "",
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none()
  );
}

