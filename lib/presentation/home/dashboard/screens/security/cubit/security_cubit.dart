import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/infrastructure/auth/otp_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'security_state.dart';
part 'security_cubit.freezed.dart';

@injectable
class SecurityCubit extends Cubit<SecurityState> {
  final IAuthFacade authFacade;
  SecurityCubit(this.authFacade) : super(SecurityState.empty());

  void emailAddressChanged({required String emailAddress}){
    emit(state.copyWith(emailAddress: emailAddress));
  }

  void pinChanged({required String pin}){
    emit(state.copyWith(pin: pin));
  }

  void sendOtp({required String phoneNumber}) async{
    final sendOtpMap = await OTPApi.sendOtp(phoneNumber: phoneNumber);
    sendOtpMap.fold((failure) {
      emit(state.copyWith(showSnackbar: true, failure: failure));
    }, (otpValue) {
      emit(state.copyWith(otp: otpValue, showSnackbar: true, success: "OTP sent to the number $phoneNumber"));
    });
  }

  void verifyOtp({required String otp}) async{
    final int otpValue = int.parse(otp);
    final int sentOTP = state.otp;
    final sp = await SharedPreferences.getInstance();
    final pin = state.pin;

    if(otpValue != sentOTP) {
      emit(state.copyWith(showSnackbar: true, failure: "Invalid verification code"));
      return;
    }
    if(!sp.containsKey("trax_key")){
      sp.setString("trax_key",pin);
      emit(state.copyWith(pinExists: true, pin: "", otp: 0, success: "Pin saved successfully"));
    }else {
      sp.setString("trax_key",pin);
      emit(state.copyWith(pinExists: true, pin: "", otp: 0, success: "Pin updated successfully"));
    }
  }

  void savePin() async {
    final sp = await SharedPreferences.getInstance();
    final pin = state.pin;
    if(!sp.containsKey("trax_key")){
      sp.setString("trax_key",pin);
      emit(state.copyWith(pinExists: true, pin: "", success: "Pin saved successfully"));
    }else {
      sp.setString("trax_key",pin);
      emit(state.copyWith(pinExists: true, pin: "", success: "Pin updated successfully"));
    }
  }

  void getPinStatus() async {
    final sp = await SharedPreferences.getInstance();
    if(sp.containsKey("trax_key")){
      emit(state.copyWith(pinExists: true));
      return;
    }
  }

  void requestReset() async {
    final emailAddress = state.emailAddress;
    final reset = await authFacade.resetPassword(emailAddress: EmailAddress(emailAddress));
    reset.fold((failure) {
      emit(state.copyWith(showSnackbar: true, failure: failure));
    }, (success) {
      emit(state.copyWith(showSnackbar: true, success: success));
    });
  }
}
