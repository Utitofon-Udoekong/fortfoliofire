import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_trailing_function_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/cubit/payment_method_cubit.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
 

class SelectWithdrawalMethod extends StatelessWidget {
  const SelectWithdrawalMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
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
                  height: 20,
                ),
                Text(
                  "Withdrawal",
                  style: titleText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Select which account you want to withdraw to. You can make withdrawals to your crypto or bank account. ',
                  style: subTitle.copyWith(color: kgreyColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocSelector<PaymentMethodCubit, PaymentMethodState, bool>(
                  selector: (state) {
                    return state.noAddress;
                  },
                  builder: (context, paymentMethodExists) {
                    List<Widget> children = [];
                    if(paymentMethodExists){
                      children = [
                        CustomIconTrailingFunctionButton(
                            icon: 'withdraw-bank',
                            title: 'Bank Account',
                            ontap: () {
                              context.router.push(const BankWithdrawalRoute());
                              context
                                  .read<WalletCubit>()
                                  .withdrawalMethodChanged(
                                      withdrawalMethod: "Bank");
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomIconTrailingFunctionButton(
                          icon: 'withdraw-crypto',
                          title: 'Crypto Wallet',
                          ontap: () {
                            context.router.push(const CryptoWithdrawalRoute());
                            context
                                .read<WalletCubit>()
                                .withdrawalMethodChanged(
                                    withdrawalMethod: "Crypto");
                          },
                        ),
                      ];
                    }else{
                      final svg = SvgPicture.asset(
                        'images/blank-wallet.svg',
                        semanticsLabel: 'Blank Wallet',
                      );
                      children = [Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 50,
                            ),
                            svg,
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              'No payment method added yet',
                              style: subTitle,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            TextButton(onPressed: () {
                              context.read<PaymentMethodCubit>().setNextPage(nextPage: const SelectWithdrawalMethodRoute());
                              context.router.push(const PaymentMethodRoute());
                            }, child: Text(
                              "Add new",
                              style: subTitle.copyWith(color: kPrimaryColor, fontSize: 15),
                            ))
                          ],
                        ),
                      )];
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
