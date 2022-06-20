import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_box_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_field_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'dart:async';


class ConfirmSignupWithOTP extends StatefulWidget {

  const ConfirmSignupWithOTP({Key? key}) : super(key: key);

  @override
  State<ConfirmSignupWithOTP> createState() => _ConfirmSignupWithOTPState();
}

class _ConfirmSignupWithOTPState extends State<ConfirmSignupWithOTP> {
  int smsCodeTimeoutSeconds = 60;
  bool resend = false;
  void onTimerCompleted(){
    if(resend) startTimer();
  }
  ///The timer instance.
  late Timer? _timer;

  ///The number of seconds past since the timer started.
  int _seconds = 0;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  ///Start the timer.
  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_seconds == smsCodeTimeoutSeconds) {
          timer.cancel();
          onTimerCompleted();
        } else {
          setState(() {
            _seconds++;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  ///Format [value] seconds into the mm:ss format.
  String formatSeconds(int value) =>
      '${formatDecimal(value ~/ 60)}:${formatDecimal(value % 60)}';

  ///Format decimals into the ss format.
  String formatDecimal(int value) => value < 10 ? '0$value' : value.toString();

  @override
  Widget build(BuildContext context) {
    final phoneNumber = context.select(
        (SignUpFormPhoneCubit phoneCubit) => phoneCubit.state.phoneNumber);
    
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
           BlocListener<SignUpFormPhoneCubit, SignUpFormPhoneState>(
                  listenWhen: (p, c) =>
                      p.failure != c.failure && c.failure.isNotEmpty,
                  listener: (context, state) {
                    CustomSnackbar.showSnackBar(context, state.failure, true);
                  },
                ),
           BlocListener<SignUpFormPhoneCubit, SignUpFormPhoneState>(
                  listenWhen: (p, c) =>
                      p.success != c.success && c.success.isNotEmpty,
                  listener: (context, state) {
                    CustomSnackbar.showSnackBar(context, state.success, false);
                    context.router.replace(const HomePageRoute());
                  },
                ),
        ],
        child: BlocBuilder<SignUpFormPhoneCubit, SignUpFormPhoneState>(
          builder: (context, state) {
            return LoadingView(
                isLoading: state.isSubmitting,
                child: SafeArea(
                    child: Semantics(
                      label: "Confirm phone signup with otp",
                      child: SingleChildScrollView(
                                      child: Padding(
                      padding: kDefaultPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              context.read<SignUpFormPhoneCubit>().reset();
                              context.router.pop();
                            },
                            child: const Icon(Icons.close),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'We sent an OTP to the number $phoneNumber',
                            style: titleText.copyWith(fontSize: 24),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          BlocBuilder<SignUpFormPhoneCubit, SignUpFormPhoneState>(
                            builder: (context, state) {
                              return Semantics(
                                textField: true,
                                label: "OTP Text field",
                                child: OTPTextField(
                                  length: 6,
                                  width: MediaQuery.of(context).size.width,
                                  fieldWidth: 38,
                                  fieldHeight: 42,
                                  style: subTitle.copyWith(color: kPrimaryColor),
                                  textFieldAlignment: MainAxisAlignment.spaceAround,
                                  fieldStyle: FieldStyle.box,
                                  otpFieldStyle: OtpFieldStyle(
                                      borderColor: kgreyColor,
                                      focusBorderColor: kPrimaryColor),
                                  keyboardType: TextInputType.number,
                                  onCompleted: (value) => context
                                      .read<SignUpFormPhoneCubit>()
                                      .smsCodeChanged(smsCode: value),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          BlocSelector<SignUpFormPhoneCubit, SignUpFormPhoneState,
                              bool>(
                            selector: (state) {
                              return state.phoneNumber.isEmpty;
                            },
                            builder: (context, invalidPhone) {
                              return CustomAuthFilledButton(
                                text: "VERIFY",
                                onTap: () => context
                                    .read<SignUpFormPhoneCubit>()
                                    .verifySmsCode(),
                                disabled: invalidPhone,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              TextButton(onPressed: () {
                                setState(() {
                                  resend = true;
                                });
                                context
                                  .read<SignUpFormPhoneCubit>()
                                  .signUpWithPhoneNumber();
                              }, child: Text("Resend", style: subTitle.copyWith(fontSize: 13, color: kPrimaryColor),)),
                              const Spacer(),
                              countDownTimer(
                                smsCodeTimeoutSeconds: smsCodeTimeoutSeconds,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ),
                    )),
              );
          },
        ),
      ),
    );
  }

  Widget countDownTimer({required int smsCodeTimeoutSeconds}){
    return Text(
      formatSeconds(smsCodeTimeoutSeconds - _seconds),
      style: const TextStyle(color: Colors.grey),
    );
  }
}
