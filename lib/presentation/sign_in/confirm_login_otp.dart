import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class ConfirmLoginWithOTP extends StatefulWidget {
  const ConfirmLoginWithOTP({Key? key}) : super(key: key);

  @override
  _ConfirmLoginWithOTPState createState() => _ConfirmLoginWithOTPState();
}

class _ConfirmLoginWithOTPState extends State<ConfirmLoginWithOTP> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<SignInFormPhoneBloc>(context),
      child: Scaffold(
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
              children: <Widget>[
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
                  'We sent an OTP to your phone number',
                  style: titleText,
                ),
                const SizedBox(
                  height: 20,
                ),
                OTPTextField(
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
                CustomAuthFilledButton(
                  text: context.read<SignInFormPhoneBloc>().state.isSubmitting ? 'VERIFYING' : 'VERIFY',
                  onTap: () {
                   
                  },
                  disabled: context.read<SignInFormPhoneBloc>().state.isSubmitting,
                )
              ],
            ),
          ),
        ),
      )),
    ),
    );
  }
}
