import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';

import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import 'cubit/wallet_cubit.dart';

class WithdrawalSuccess extends StatelessWidget {
  const WithdrawalSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstName = context
        .select((AuthCubit element) => element.state.userModel.firstName);
    final lastName =
        context.select((AuthCubit element) => element.state.userModel.lastName);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset(
              "images/success.png",
              width: MediaQuery.of(context).size.width * 0.65,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
              "Transaction to $firstName $lastName has been carried out successfully! ",
              style: titleText.copyWith(fontSize: 20),
              textAlign: TextAlign.center),
          const SizedBox(
            height: 30,
          ),
          CustomFilledButton(
              text: 'DONE',
              onTap: () {
                context.read<WalletCubit>().reset();
                context.router.push(const WalletRoute());
              })
        ],
      ),
    );
  }
}
