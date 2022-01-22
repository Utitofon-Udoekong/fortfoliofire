part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent{
  const factory SignUpFormEvent.emailChanged(String emailString) = EmailChanged; 
  const factory SignUpFormEvent.firstNameChanged(String firstNameString) = FirstNameChanged; 
  const factory SignUpFormEvent.lastNameChanged(String lastNameString) = LastNameChanged; 
  const factory SignUpFormEvent.phoneNumberChanged(String phoneNumberString) = PhoneNumberChanged; 
  const factory SignUpFormEvent.passwordChanged(String passwordString) = PasswordChanged; 
  const factory SignUpFormEvent.smsCodeChanged(String smsCodeString) = SMSCodeChanged; 
  const factory SignUpFormEvent.registerWithEmailAndPasswordpressed() = RegisterWithEmailAndPasswordPressed;
}
