part of 'sign_up_form_cubit.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required EmailAddress emailAddress,
    required UserName firstName,
    required UserName lastName,
    required Password password,
    required bool isSubmitting,
    required bool isObscure,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpFormState;
  const SignUpFormState._();
  factory SignUpFormState.initial() => SignUpFormState(
    emailAddress: EmailAddress(''),
    firstName: UserName(''),
    lastName: UserName(''), 
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    isObscure: false,
    authFailureOrSuccessOption: none(), 
  );
  bool get isValidState => emailAddress.isValid() && firstName.isValid() && lastName.isValid() && password.isValid();
}

