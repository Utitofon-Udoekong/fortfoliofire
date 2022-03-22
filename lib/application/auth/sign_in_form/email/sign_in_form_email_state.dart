part of 'sign_in_form_email_cubit.dart';

@freezed
class SignInFormEmailState with _$SignInFormEmailState {
  const factory SignInFormEmailState(
      {required EmailAddress emailAddress,
      required Password password,
      required bool isSubmitting,
      required bool isObscure,
      required bool showErrorMessages,
      required String failure,
    required String success,}) = _SignInFormEmailState;
  const SignInFormEmailState._();
  factory SignInFormEmailState.initial() => SignInFormEmailState(
        emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    failure: "",
    success: "",
    isObscure: false
      );
    
    bool get isValidState => emailAddress.isValid() && password.isValid();
}
