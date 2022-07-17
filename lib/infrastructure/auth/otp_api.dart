import 'dart:math';

import 'package:fpdart/fpdart.dart';
import 'package:telephony/telephony.dart';

class OTPApi {
  static int otp = 0;
  static final Telephony telephony = Telephony.instance;
  static Future<int> generateOtp() async {
    otp = Random().nextInt(999999) + 100000;
    return otp;
  }

  static Future<Either<String,int>> sendOtp({required String phoneNumber}) async {
    bool? permissionsGranted = await telephony.requestSmsPermissions;
    if (!permissionsGranted!) {
      return left("You don't have the permission to perform this action");
    }
    final otpValue = await generateOtp();
    if (otpValue >= 100000) {
      telephony.sendSms(to: phoneNumber, message: "Fortfolio OTP code: $otp");
    }
    return right(otpValue);
  }
}
