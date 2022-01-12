import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/authentication/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/widgets/custom_snackbar.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class ConfirmSignUp extends StatefulWidget {
  @override
  State<ConfirmSignUp> createState() => _ConfirmSignUpState();
}

class _ConfirmSignUpState extends State<ConfirmSignUp> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                  iconSize: 18,
                  color: kBlackColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'We sent an OTP to your email or phone number',
                  style: titleText,
                ),
                const SizedBox(
                  height: 20,
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
                      backgroundColor: Colors.white,
                      borderColor: kgreyColor,
                      focusBorderColor: kPrimaryColor),
                  keyboardType: TextInputType.number,
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
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      const oneSec = Duration(milliseconds: 2000);
                      setState(() {
                        _isLoading = true;
                      });
                      try {
                        bool res = true;
                        if (res) {
                          _timer = Timer.periodic(oneSec, (timer) {
                            setState(() {
                              _isLoading = false;
                            });
                          });
                        }
                      } catch (e) {
                        CustomSnackbar.showSnackBar(
                            context, e.toString(), true);
                      }
                    }
                  },
                  disabled: true,
                )
              ],
            ),
          ),
        ),)
      ));
  }

  void resend() {
    setState(() {
      _isResendAgain = true;
    });
    try {
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
