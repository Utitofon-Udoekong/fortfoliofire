import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:intl/intl.dart';

import '../cubit/wallet_cubit.dart';

class WalletOverview extends StatelessWidget {
  const WalletOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final regExp = RegExp(r".");
    final eye = SvgPicture.asset('images/eye.svg', width: 20);
    final formatter = NumberFormat("#,##0.00", "en_US");
    final fortCryptoBalance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortCryptoInvestmentBalance);
    final fortShieldBalance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortShieldInvestmentBalance);
    final fortDollarBalance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortDollarInvestmentBalance);
    final fortCryptoYield = context.select(
        (WalletCubit walletCubit) => walletCubit.state.fortCryptoYieldBalance);
    final fortShieldYield = context.select(
        (WalletCubit walletCubit) => walletCubit.state.fortShieldYieldBalance);
    final fortDollarYield = context.select(
        (WalletCubit walletCubit) => walletCubit.state.fortDollarYieldBalance);
    final selectedExchange =
        context.select((WalletCubit cubit) => cubit.state.exchange);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Text('Total Balance',
                              style: subTitle.copyWith(
                                  fontSize: 14, color: kWhiteColor)),
                          const SizedBox(
                            width: 5,
                          ),
                          IconButton(
                              onPressed: () => context
                                  .read<WalletCubit>()
                                  .showDigitsChanged(),
                              icon: eye)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BlocBuilder<WalletCubit, WalletState>(
                        builder: (context, state) {
                          if (state.exchange == "NGN") {
                            return state.showDigits
                                ? Text('N${formatter.format(state.walletBalance * 560) }',
                                    style: subTitle.copyWith(
                                        fontSize: 15, color: kWhiteColor))
                                : Text(
                                    formatter.format(state.walletBalance * 560)
                                        .replaceAll(regExp, "*"),
                                    style: subTitle.copyWith(
                                        fontSize: 23, color: kWhiteColor));
                          } else {
                            return state.showDigits
                                ? Text('\$${formatter.format(state.walletBalance)}',
                                    style: subTitle.copyWith(
                                        fontSize: 15, color: kWhiteColor))
                                : Text(
                                    formatter.format(state.walletBalance)
                                        .replaceAll(regExp, "*"),
                                    style: subTitle.copyWith(
                                        fontSize: 23, color: kWhiteColor));
                          }
                        },
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: kWhiteColor,
                        ),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<dynamic>(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Select balance',
                                          style:
                                              titleText.copyWith(fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        buildtile('9ja', 'NGN Balance', () {
                                          context
                                              .read<WalletCubit>()
                                              .exchangeChanged(exchange: "NGN");
                                          context.router.pop();
                                        }, selectedExchange, "NGN"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildtile('usa', 'USD Balance', () {
                                          context
                                              .read<WalletCubit>()
                                              .exchangeChanged(exchange: "USD");
                                          context.router.pop();
                                        }, selectedExchange, "USD"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildtile('btc', 'BTC Balance', () {
                                          context
                                              .read<WalletCubit>()
                                              .exchangeChanged(exchange: "BTC");
                                          context.router.pop();
                                        }, selectedExchange, "BTC"),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              backgroundColor: kWhiteColor);
                        },
                        child: BlocBuilder<WalletCubit, WalletState>(
                          buildWhen: (previous, current) =>
                              previous.exchange != current.exchange,
                          builder: (context, state) {
                            return Flex(
                              direction: Axis.horizontal,
                              children: <Widget>[
                                Text(
                                  state.exchange,
                                  style: subTitle.copyWith(
                                      color: kWhiteColor, fontSize: 15),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: kWhiteColor,
                                )
                              ],
                            );
                          },
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Color(0XFFF3F6F8),
              thickness: 2.0,
            ),
            const SizedBox(
              height: 20,
            ),
            Flex(
              direction: Axis.horizontal,
              children: const <Widget>[
                Text(
                  'Current Investments',
                  style: TextStyle(
                      color: Color(0XFF535454),
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            BlocSelector<WalletCubit, WalletState, bool>(
              selector: (state) {
                return state.investmentDoesNotExist;
              },
              builder: (context, investmentDoesNotExist) {
                return Visibility(
                    visible: investmentDoesNotExist,
                    child: Text("You dont have any investments at the moment.",
                        style: subTitle.copyWith(
                          fontSize: 18,
                          color: kBlackColor,
                        )));
              },
            ),
            // BUILD DIFFERENT PAGES TO SHOW BALANCE FOR THESE PLANS
            BlocBuilder<WalletCubit, WalletState>(
              builder: (context, state) {
                return Visibility(
                    visible: state.isFortDollarActive,
                    child: buildcard(
                      'FortDollar',
                      'fortdollar',
                      () {
                        context.router
                            .push(const FortDollarInvestmentInfoRoute());
                      },
                      "\$${formatter.format(fortDollarBalance)}",
                      state.showDigits,
                      "\$$fortDollarYield",
                    ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<WalletCubit, WalletState>(
              builder: (context, state) {
                return Visibility(
                  visible: state.isFortCryptoActive,
                  child: buildcard('FortCrypto', 'fortcrypto', () {
                    context.router.push(const FortCryptoInvestmentInfoRoute());
                  }, "\$${formatter.format(fortCryptoBalance)}", state.showDigits,
                      "\$$fortCryptoYield"),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<WalletCubit, WalletState>(
              builder: (context, state) {
                return Visibility(
                  visible: state.isFortShieldActive,
                  child: buildcard('FortShield', 'fortshield', () {
                    context.router.push(const FortShieldInvestmentInfoRoute());
                  }, "N${formatter.format(fortShieldBalance)}", state.showDigits,
                      "N$fortShieldYield"),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildtile(String icon, String title, Function() ontap,
      String seletedExchange, String exchange) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: <Widget>[
          Image(image: AssetImage("images/$icon.png")),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: subTitle.copyWith(
                color: kBlackColor, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          const Spacer(),
          Icon(
            seletedExchange == exchange
                ? Icons.circle_rounded
                : Icons.circle_outlined,
            color: klightblue,
          )
        ],
      ),
    );
  }

  Widget buildcard(String title, String path, Function() ontap, String balance,
      bool showDigits, String yield) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image(image: AssetImage("images/$path.png")),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: titleText.copyWith(fontSize: 15),
                ),
              ],
            ),
            showDigits
                ? Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        balance,
                        style: titleText.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        yield,
                        style:
                            subTitle.copyWith(fontSize: 14, color: kBlackColor),
                      ),
                    ],
                  )
                : Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        balance.replaceAll(RegExp(r"."), '*'),
                        style: titleText.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        yield.replaceAll(RegExp(r"."), '*'),
                        style: titleText.copyWith(fontSize: 14),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
