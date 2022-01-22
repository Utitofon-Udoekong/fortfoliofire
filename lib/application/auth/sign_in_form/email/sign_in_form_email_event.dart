part of 'sign_in_form_email_bloc.dart';


@freezed
class SignInFormEmailEvent with _$SignInFormEmailEvent{
  const factory SignInFormEmailEvent.emailChanged(String emailString) = EmailChanged; 
  const factory SignInFormEmailEvent.passwordChanged(String passwordString) = PasswordChanged; 
  const factory SignInFormEmailEvent.signInWithEmailAndPasswordpressed() = SignInWithEmailAndPasswordPressed;
}
