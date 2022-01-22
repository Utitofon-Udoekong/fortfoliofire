part of 'sign_in_form_phone_bloc.dart';


@freezed
class SignInFormPhoneEvent with _$SignInFormPhoneEvent{
  const factory SignInFormPhoneEvent.phoneChanged(String phoneString) = PhoneChanged; 
  const factory SignInFormPhoneEvent.smsCodeChanged(String smsCodeString) = SMSCodeChanged; 
  const factory SignInFormPhoneEvent.signInWithPhonePressed() = SignInWithPhonePressed;
}
