// import 'dart:math';
// import 'package:sms/sms.dart';

// class OTPApi {
//   int otp = 0, _minOtpValue = 0, _maxOtpValue = 0;
//   void generateOtp() {
//     _minOtpValue = 100000;
//     _maxOtpValue = 999999;
//     otp = _minOtpValue + Random().nextInt(_maxOtpValue - _minOtpValue);
//   }

//   void sendOtp({required String phoneNumber}) {
//     generateOtp();
//     SmsSender sender = SmsSender();
//     sender.sendSms(SmsMessage( phoneNumber, 'Fortfolio: Your OTP code is : $otp'));
//   }

//   bool verifyOTP({required int smsCode}) {
//     return smsCode == otp;
//   }

// }