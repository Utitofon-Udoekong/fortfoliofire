import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/notification/local_notification_cubit.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/infrastructure/auth/otp_api.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'security_state.dart';
part 'security_cubit.freezed.dart';

@injectable
class SecurityCubit extends Cubit<SecurityState> {
  final IAuthFacade authFacade;
  late final LocalNotificationCubit localNotificationCubit;
  SecurityCubit(this.authFacade) : super(SecurityState.empty()){
    localNotificationCubit = getIt<LocalNotificationCubit>();
  }

  void reset() => emit(state.copyWith(pin: "", otp: "", sentOtp: ""));
  void clear() => emit(state.copyWith(success: "", failure: ""));
  void emailAddressChanged({required String emailAddress}){
    emit(state.copyWith(emailAddress: emailAddress));
  }

  void pinChanged({required String pin}){
    emit(state.copyWith(pin: pin));
  }
  void otpChanged({required String otp}){
    emit(state.copyWith(sentOtp: otp));
  }

  void sendOtp({required String phoneNumber}) async{
    clear();
    final sendOtpMap = await localNotificationCubit.showNotification(id: 0);
    sendOtpMap.fold(() => null, (otp) {
      emit(state.copyWith(otp: otp.toString(), showSnackbar: true, success: "OTP sent to the number $phoneNumber"));
    });
  }

  void verifyOtp() async{
    clear();
    final int otpValue = int.parse(state.otp);
    final int sentOTP = int.parse(state.sentOtp);
    final sp = await SharedPreferences.getInstance();
    final pin = state.pin;

    if(otpValue != sentOTP) {
      emit(state.copyWith(showSnackbar: true, failure: "Invalid verification code"));
      return;
    }
    if(!sp.containsKey("trax_key")){
      sp.setString("trax_key",pin);
      reset();
      emit(state.copyWith(pinExists: true, success: "Pin saved successfully"));
    }else {
      sp.setString("trax_key",pin);
      reset();
      emit(state.copyWith(pinExists: true, success: "Pin updated successfully"));
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
    clear();
    final emailAddress = state.emailAddress;
    final reset = await authFacade.resetPassword(emailAddress: EmailAddress(emailAddress));
    reset.fold((failure) {
      emit(state.copyWith(showSnackbar: true, failure: failure));
    }, (success) {
      emit(state.copyWith(showSnackbar: true, success: success));
    });
  }

}
