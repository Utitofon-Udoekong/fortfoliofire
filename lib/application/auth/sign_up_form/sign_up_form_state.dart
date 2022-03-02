part of 'sign_up_form_cubit.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required EmailAddress emailAddress,
    required UserName firstName,
    required UserName lastName,
    required Phone phoneNumber,
    required String smsCode,
    required Password password,
    required bool isSubmitting,
    required bool isObscure,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required Option<String> verificationIdOption,
  }) = _SignUpFormState;
  const SignUpFormState._();
  factory SignUpFormState.initial() => SignUpFormState(
    emailAddress: EmailAddress(''),
    firstName: UserName(''),
    lastName: UserName(''), 
    phoneNumber: Phone(''), 
    password: Password(''),
    smsCode: "",
    showErrorMessages: false,
    isSubmitting: false,
    isObscure: false,
    authFailureOrSuccessOption: none(), 
    verificationIdOption: none(),
  );
  bool get displayNextButton => verificationIdOption.isNone() && !isSubmitting;
  bool get displaySmsCodeForm => verificationIdOption.isSome();
  bool get displayLoadingIndicator => !displayNextButton && !displaySmsCodeForm;
  bool get isValidState => emailAddress.isValid() && phoneNumber.isValid() && firstName.isValid() && lastName.isValid() && password.isValid();
}

