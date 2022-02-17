import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyCryptoWallet extends StatefulWidget {
  const VerifyCryptoWallet({Key? key}) : super(key: key);

  @override
  State<VerifyCryptoWallet> createState() => _VerifyCryptoWalletState();
}

class _VerifyCryptoWalletState extends State<VerifyCryptoWallet> {
  bool _isResendAgain = false;
  bool _isLoading = false;
  late Timer _timer;

  int _start = 60;

  int _currentIndex = 0;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        _currentIndex++;
        if (_currentIndex == 3) {
          _currentIndex = 0;
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: kDefaultPadding,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: ()=> context.router.pop(),
                  child: const Icon(Icons.close, size: 18, color: kBlackColor,),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Verification',
                  style: titleText,
                ),
                const SizedBox(
                height: 20,
                ),
                const Text(
                  "For security purpose please, enter OTP sent to your email or phone number",
                  style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                ),
                const SizedBox(
                  height: 30,
                ),
                OTPTextField(
                  key: _formKey,
                  length: 6,
                  width: MediaQuery.of(context).size.width - 34,
                  fieldWidth: 58,
                  style: titleText,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  otpFieldStyle: OtpFieldStyle(
                      backgroundColor: const Color(0XFFF3F6F8),
                      focusBorderColor: kPrimaryColor),
                  keyboardType: TextInputType.number,
                  // onChanged: (value) => controller.updateCode(value),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    _isResendAgain
                        ? "Try again in " + _start.toString()
                        : "Resend Code?",
                    style: const TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    if (_isResendAgain) return;
                    resend();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomAuthFilledButton(
                  text: 'VERIFY',
                  // text: controller.isLoading as bool ? 'VERIFYING' : 'VERIFY',
                  onTap: () {
                    // if (_formKey.currentState!.validate()) {
                    //   const oneSec = Duration(milliseconds: 2000);
                    //   setState(() {
                    //     _isLoading = true;
                    //   });
                    //   try {
                    //     bool res = controller.confirmSignup() as bool;
                    //     if (res) {
                    //       _timer = Timer.periodic(oneSec, (timer) {
                    //         setState(() {
                    //           _isLoading = false;
                    //         });
                    //       });
                    //     }
                    //   } catch (e) {
                    //     CustomSnackbar.showSnackBar(
                    //         context, e.toString(), true);
                    //   }
                    // }
                  },
                  disabled: false,
                )
              ],
            ),
          ),
        ),)
      ),
    );
  }

  void resend() {
    setState(() {
      _isResendAgain = true;
    });
    try {
      // controller.resendConfirmationCode();
      const oneSec = Duration(seconds: 1);
      _timer = Timer.periodic(oneSec, (timer) {
        setState(() {
          if (_start == 0) {
            _start = 60;
            _isResendAgain = false;
            timer.cancel();
          } else {
            _start--;
          }
        });
      });
    } catch (e) {
      rethrow;
    }
  }
}
