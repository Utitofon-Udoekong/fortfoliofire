import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_outlined_button.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:intl/intl.dart';

class FortShieldInvestmentInfo extends StatelessWidget {
  const FortShieldInvestmentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##0.00", "en_US");
    final balance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortShieldInvestmentBalance);
    final yield = context.select(
        (WalletCubit walletCubit) => walletCubit.state.fortShieldYieldBalance);
    final activeInvestments = context.select(
        (WalletCubit walletCubit) => walletCubit.state.fortShieldInvestments);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30),
              Row(children: <Widget>[
                InkWell(
                  onTap: () => context.router.pop(),
                  child: const Icon(Icons.close),
                ),
                Text(
                  "Fortshield",
                  style: titleText.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                )
              ]),
              const SizedBox(height: 30),
              Text("Total", style: subTitle.copyWith(fontSize: 12)),
              const SizedBox(height: 8),
              Text("N${balance.toString()}",
                  style: titleText.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 30),
              Text("Available for yield",
                  style: subTitle.copyWith(fontSize: 12)),
              const SizedBox(height: 8),
              Text("N ${yield.toString()}",
                  style: titleText.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 30),
              Text("Active Investments",
                  style:
                      subTitle.copyWith(fontSize: 12, color: kPrimaryColor)),
              const SizedBox(height: 15),
              SizedBox(
                height: activeInvestments.length * 100 + 50,
                child: ListView.builder(
                  itemCount: activeInvestments.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    return buildTile(
                        '${activeInvestments[index].planName} / ${activeInvestments[index].duration.toInt()} month(s)',
                        'N${formatter.format(activeInvestments[index].amount)}', () {
                      context
                          .read<WalletCubit>()
                          .investmentToBeWithdrawnChanged(
                              investmentToBeWithdrawn:
                                  activeInvestments[index]);
                      context.router.push(const WithdrawalPageRoute());
                    },activeInvestments[index].status == "Pending");
                  }),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomOutlinedButton(
                    text: 'INVEST',
                    onTap: () =>
                        context.router.push(const FortShieldInvestmentRoute())),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

Widget buildTile(String title, String amount, Function() ontap, bool pending) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      decoration: BoxDecoration(
          color: const Color(0XFFF3F6F8),
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: subTitle.copyWith(fontSize: 12),
              ),
              Text(
                amount,
                style: titleText.copyWith(fontSize: 15),
              )
            ],
          ),
          GestureDetector(
            onTap: pending ? null : ontap,
            child: Container(
              alignment: Alignment.center,
              height: 48,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: pending ? const Color.fromRGBO(3, 66, 109, 0.65) : kPrimaryColor,
              ),
              child: Text(
                pending ? 'Pending' : 'Withdraw',
                style: textButton.copyWith(color: kWhiteColor, fontSize: 15),
              ),
            ),
          ),
        ],
      ));
}
