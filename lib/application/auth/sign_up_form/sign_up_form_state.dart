part of 'sign_up_form_bloc.dart';

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
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
    emailAddress: EmailAddress(''),
    firstName: UserName(''),
    lastName: UserName(''), 
    phoneNumber: Phone(''), 
    password: Password(''),
    smsCode: "",
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(), 
  );
}

