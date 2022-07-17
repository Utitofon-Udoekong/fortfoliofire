import 'package:flutter/material.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_box_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_field_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_text_field.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/confirm_security_otp.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class SetPin extends StatelessWidget {
  const SetPin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SecurityCubit>().getPinStatus();
    final pinExists =
        context.select((SecurityCubit cubit) => cubit.state.pinExists);
    final phoneNumber = context
        .select((AuthCubit authCubit) => authCubit.state.userModel.phoneNumber);
    return MultiBlocListener(
      listeners: [
        BlocListener<SecurityCubit, SecurityState>(
          listenWhen: (previous, current) =>
              previous.otp != current.otp && current.otp.isNotEmpty,
          listener: (context, state) {
            context.router.push(const ConfirmSecurityOTPRoute());
          },
        ),
        BlocListener<SecurityCubit, SecurityState>(
          listenWhen: (previous, current) =>
              previous.failure != current.failure && current.failure.isNotEmpty,
          listener: (context, state) {
            CustomSnackbar.showSnackBar(context, state.failure, true);
          },
        ),
      ],
      child: Scaffold(
        body: SafeArea(
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
                  onTap: () => context.router.pop(),
                  child: const Icon(Icons.close),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  pinExists ? "Update Pin" : "Set Pin",
                  style: titleText,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Enter your 6 digit pin",
                  style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<SecurityCubit, SecurityState>(
                  builder: (context, state) {
                    return OTPTextField(
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 38,
                      fieldHeight: 42,
                      style: subTitle.copyWith(color: kPrimaryColor),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                      otpFieldStyle: OtpFieldStyle(
                          borderColor: kgreyColor,
                          focusBorderColor: kPrimaryColor),
                      keyboardType: TextInputType.number,
                      onCompleted: (value) =>
                          context.read<SecurityCubit>().pinChanged(pin: value),
                    );
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocSelector<SecurityCubit, SecurityState, bool>(
                  selector: (state) {
                    return state.pin.length == 6;
                  },
                  builder: (context, isValidState) {
                    return CustomAuthFilledButton(
                      text: pinExists ? 'UPDATE PIN' : 'SET PIN',
                      onTap: () => context
                          .read<SecurityCubit>()
                          .sendOtp(phoneNumber: phoneNumber),
                      disabled: !isValidState,
                    );
                  },
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
