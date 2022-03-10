import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import '../cubit/wallet_cubit.dart';

class WalletOverview extends StatelessWidget {
  const WalletOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final regExp = RegExp(r".");
    final eye = SvgPicture.asset('images/eye.svg', width: 20);
    // final fortDollarActive = context.select(
    //     (WalletCubit walletCubit) => walletCubit.state.isFortDollarActive);
    // final fortShieldActive = context.select(
    //     (WalletCubit walletCubit) => walletCubit.state.isFortShieldActive);
    // final fortCryptoActive = context.select(
    //     (WalletCubit walletCubit) => walletCubit.state.isFortCryptoActive);
    final fortCryptoBalance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortCryptoInvestmentBalance);
    final fortShieldBalance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortShieldInvestmentBalance);
    final fortDollarBalance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortDollarInvestmentBalance);
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
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () => context
                                  .read<WalletCubit>()
                                  .showDigitsChanged(),
                              icon: eye)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocBuilder<WalletCubit, WalletState>(
                        // buildWhen: (p, c) => p.exchange != c.exchange,
                        builder: (context, state) {
                          if (state.exchange == "NGN") {
                            return state.showDigits
                                ? Text('N${state.walletBalance * 560}',
                                    style: subTitle.copyWith(
                                        fontSize: 15, color: kWhiteColor))
                                : Text((state.walletBalance * 560)
                                    .toString()
                                    .replaceAll(regExp, "*"),style: subTitle.copyWith(
                                        fontSize: 18, color: kWhiteColor));
                          } else {
                            return state.showDigits
                                ? Text('\$${state.walletBalance}',
                                    style: subTitle.copyWith(
                                        fontSize: 15, color: kWhiteColor))
                                : Text(state.walletBalance
                                    .toString()
                                    .replaceAll(regExp, "*"),style: subTitle.copyWith(
                                        fontSize: 18, color: kWhiteColor));
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
                          // width: 1.5,
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
                                        }),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildtile('usa', 'USD Balance', () {
                                          context
                                              .read<WalletCubit>()
                                              .exchangeChanged(exchange: "USD");
                                          context.router.pop();
                                        }),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildtile('btc', 'BTC Balance', () {
                                          context
                                              .read<WalletCubit>()
                                              .exchangeChanged(exchange: "BTC");
                                          context.router.pop();
                                        }),
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
                  'Investment Packages',
                  style: TextStyle(
                      color: Color(0XFF535454),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            // BUILD DIFFERENT PAGES TO SHOW BALANCE FOR THESE PLANS
            BlocBuilder<WalletCubit, WalletState>(
              builder: (context, state) {
                return Visibility(
                  visible: state.isFortDollarActive,
                  child: buildcard('FortDollar', 'fortdollar', () {
                    context.read<WalletCubit>().initFortDollarInvestments();
                    context.read<WalletCubit>().initFortDollar();
                    context.router.push(const FortDollarInvestmentInfoRoute());
                  }, fortDollarBalance.toString(), state.showDigits),
                );
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
                context.read<WalletCubit>().initFortCryptoInvestments();
                context.read<WalletCubit>().initFortCrypto();
                context.router.push(const FortCryptoInvestmentInfoRoute());
              }, fortCryptoBalance.toString(), state.showDigits),
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
                context.read<WalletCubit>().initFortShieldInvestments();
                context.read<WalletCubit>().initFortShield();
                context.router.push(const FortShieldInvestmentInfoRoute());
              }, fortShieldBalance.toString(), state.showDigits),
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

  Widget buildtile(String icon, String title, Function() ontap) {
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
          const Icon(
            Icons.circle_outlined,
            color: klightblue,
          )
        ],
      ),
    );
  }

  Widget buildcard(String title, String path, Function() ontap, String balance,
      bool showDigits) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Image(image: AssetImage("images/$path.png")),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: titleText.copyWith(fontSize: 15),
            ),
            const Spacer(),
            showDigits
                ? Text(
                    balance,
                    style: titleText.copyWith(fontSize: 14),
                  )
                : Text(balance.replaceAll(RegExp(r"."), '*'),style: titleText.copyWith(fontSize: 14),)
          ],
        ),
      ),
    );
  }
}
