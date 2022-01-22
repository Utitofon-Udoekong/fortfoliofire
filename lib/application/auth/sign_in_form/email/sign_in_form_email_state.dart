part of 'sign_in_form_email_bloc.dart';

@freezed
class SignInFormEmailState with _$SignInFormEmailState {
  const factory SignInFormEmailState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
  }) = _SignInFormEmailState;

  factory SignInFormEmailState.initial() => SignInFormEmailState(
    emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none()
  );
}

