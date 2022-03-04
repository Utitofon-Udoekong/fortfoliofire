import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/presentation/home/wallet/overview/cubit/wallet_overview_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/pages.dart';

class WalletOverview extends StatelessWidget {
  const WalletOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eye = SvgPicture.asset('images/eye.svg', width: 20);
    return BlocProvider(
      create: (context) => WalletOverviewCubit(),
      child: Scaffold(
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
                            eye
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocBuilder<WalletOverviewCubit, WalletOverviewState>(
                          buildWhen: (p,c) => p.exchange != c.exchange,
                          builder: (context, state) {
                            if(state.exchange == "USD"){
                              return Text('\$${state.balance}',
                                style: subTitle.copyWith(
                                    fontSize: 14, color: kWhiteColor));
                            }else if(state.exchange == "NGN"){
                              return Text('N${state.balance * 560}',
                                style: subTitle.copyWith(
                                    fontSize: 14, color: kWhiteColor));
                            }else {
                              return Text('\$${state.balance}',
                                style: subTitle.copyWith(
                                    fontSize: 14, color: kWhiteColor));
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
                            showModalBottomSheet<dynamic>(isScrollControlled: true,context: context, builder: (BuildContext context){
                              return SizedBox(
                                height: MediaQuery.of(context).size.height * 0.35,
                                child: Padding(
                                  padding: kDefaultPadding,
                                  child: Column(
                                        children: <Widget>[
                                          Text(
                                            'Select balance',
                                            style: titleText.copyWith(fontSize: 15),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          buildtile('9ja', 'NGN Balance', () => context.read<WalletOverviewCubit>().exchangeChanged(exchange: "NGN")),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          buildtile(
                                              'usa', 'USD Balance', () => context.read<WalletOverviewCubit>().exchangeChanged(exchange: "USD")),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          buildtile(
                                              'btc', 'BTC Balance', () => context.read<WalletOverviewCubit>().exchangeChanged(exchange: "BTC")),
                                        ],
                                      ),
                                ),
                              );
                            },backgroundColor: kWhiteColor);
                          },
                          child: Flex(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Text(
                                'NGN',
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
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // CustomFilledButton(
              //     text: 'Withdrawal',
              //     onTap: () => context.router.push(walletWithdrawal)),
              // const SizedBox(
              //   height: 10,
              // ),
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
                  // CheckboxListTile(
                  //   value: false,
                  //   onChanged: (value) {},
                  //   title: Text('Hide wallet balance', style: subTitle.copyWith(fontSize: 14, color: kgreyColor),),
                  // )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              // BUILD DIFFERENT PAGES TO SHOW BALANCE FOR THESE PLANS
              buildcard('FortDollar', 'fortdollar',
                  () => context.router.push(const FortDollarInvestmentInfoRoute())),
              const SizedBox(
                height: 20,
              ),
              buildcard('FortCrypto', 'fortcrypto',
                  () => context.router.push(const FortCryptoInvestmentInfoRoute())),
              const SizedBox(
                height: 20,
              ),
              buildcard('FortShield', 'fortshield',
                  () => context.router.push(const FortShieldInvestmentInfoRoute())),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildtile(String icon, String title, Function() ontap) {
    final Widget svg = SvgPicture.asset(
      'images/$icon.png',
      semanticsLabel: title,
    );
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: <Widget>[
          svg,
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: subTitle.copyWith(
                color: kBlackColor,
                fontWeight: FontWeight.w600,
                fontSize: 15),
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

  Widget buildcard(String title, String path, Function() ontap) {
    final Widget svg = SvgPicture.asset(
      'images/$path.svg',
      semanticsLabel: title,
    );
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
            Text(
              "*******",
              style: titleText.copyWith(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
