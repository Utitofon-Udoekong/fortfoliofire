import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
 

import 'cubit/wallet_cubit.dart';

class WithdrawalSuccess extends StatelessWidget {
  const WithdrawalSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final void resetWalletState = context.select((WalletCubit walletCubit){
       walletCubit.reset();
       walletCubit.close();
    });
    return SafeArea(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () => context.router.pop(),
          child: const Icon(Icons.close),
        ),
        const SizedBox(
          height: 80,
        ),
        Image.asset("images/success.png",
            width: MediaQuery.of(context).size.width * 0.65,),
        const SizedBox(
          height: 30,
        ),
        Text("Transaction to JOY HENSHAW has been carried out successfully! ",
            style: titleText.copyWith(fontSize: 20),
            textAlign: TextAlign.center),
        const SizedBox(
          height: 30,
        ),
        CustomFilledButton(text: 'DONE', onTap: () => context.router.push(const WalletRoute()).then((_) => resetWalletState))
      ]),
    );
  }
}
