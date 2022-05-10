import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_box_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_field_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_text_field.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';

class SetPin extends StatelessWidget {
  const SetPin({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Set Pin",
                    style: titleText,
                  ),
                  const SizedBox(
                    height: 30,
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
                            // onCompleted: (value) => context
                            //     .read<SecurityCubit>()
                            //     .smsCodeChanged(smsCode: value),
                          );
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocSelector<SecurityCubit, SecurityState, bool>(
                    selector: (state) {
                      return state.isValidState;
                    },
                    builder: (context, isValidState) {
                      return CustomAuthFilledButton(
                        text: 'REQUEST PASSWORD RESET',
                        onTap: () =>
                            context.read<SecurityCubit>().requestReset(),
                        disabled: !isValidState,
                      );
                    },
                  ),
                ],
              ),
            ),
          )),
        );
  }
}