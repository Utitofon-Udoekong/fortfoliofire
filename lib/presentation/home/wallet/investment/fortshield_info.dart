import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_outlined_button.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import '../cubit/wallet_cubit.dart';

class FortShieldInvestmentInfo extends StatelessWidget {
  const FortShieldInvestmentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WalletCubit>(),
      child: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: kDefaultPadding,
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  InkWell(
                    onTap: () => context.router.pop(),
                    child: const Icon(Icons.close),
                  ),
                  Center(
                      child: Text("Fortshield",
                          style: titleText.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w700)))
                ]),
                const SizedBox(height: 30),
                Text("Total", style: subTitle.copyWith(fontSize: 12)),
                const SizedBox(height: 8),
                Text("N 90,000.00",
                    style: titleText.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(height: 30),
                Text("Available for yield", style: subTitle.copyWith(fontSize: 12)),
                const SizedBox(height: 8),
                Text("N 30,000.00",
                    style: titleText.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(height: 30),
                Text("Active Investments",
                    style: subTitle.copyWith(fontSize: 12, color: kPrimaryColor)),
                const SizedBox(height: 15),
                buildTile("FortDollar / 3 months", "\$40,000.00"),
                const SizedBox(height: 12),
                buildTile("FortDollar / 3 months", "\$40,000.00"),
                const SizedBox(height: 12),
                buildTile("FortDollar / 6 months", "\$40,000.00"),
                const Spacer(),
                CustomOutlinedButton(
                        text: 'INVEST',
                        onTap: () =>
                            context.router.push(const FortShieldInvestmentRoute())),
              ]),
            ),
          )),
        ),
    );
  }
}

Widget buildTile(String title, String amount) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
    decoration: BoxDecoration(
        color: const Color(0XFFF3F6F8),
        borderRadius: BorderRadius.circular(10.0)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flex(direction: Axis.vertical,
        children: [
          Text(title,style: subTitle.copyWith(fontSize: 12),),
          Text(amount, style: titleText.copyWith(fontSize: 15),)
        ],),
        CustomFilledButton(text: "Withdraw", onTap: () => null)
      ],
    )
  );
}
