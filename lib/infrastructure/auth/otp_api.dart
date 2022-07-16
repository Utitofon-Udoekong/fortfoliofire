import 'dart:math';

import 'package:telephony/telephony.dart';

class OTPApi {

  int otp = 0;
  final Telephony telephony = Telephony.instance;
  Future<int> generateOtp() async{
    otp = Random().nextInt(999999) + 100000;
    return otp;
  }

  Future<String> sendOtp({required String phoneNumber}) async{
    bool? permissionsGranted = await telephony.requestSmsPermissions;
    if(!permissionsGranted!) return "You dont have the permission to perform this action";
    await generateOtp().then((_) {
      if(otp < 10000) return;
      telephony.sendSms(
        to: phoneNumber,
        message: "Fortfolio OTP code: $otp"
      );
    });
    return "OTP code sent to the number $phoneNumber";
  }

}