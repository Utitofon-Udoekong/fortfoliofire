import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/pages.dart';

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<WalletCubit>(),
      child: Scaffold(
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
                    "Withdraw",
                    style: titleText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Select where you want to withdraw from. Withdrawals have a time lock of 7 days.',
                    style: subTitle.copyWith(color: kgreyColor),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  buildTile('Invested', 350000, 'Withdraw', () {
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: Padding(
                          padding: kDefaultPadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                'How much are you\nwithdrawing?',
                                style: titleText.copyWith(fontSize: 20),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Amount',
                                style: subTitle.copyWith(color: kgreyColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF3F6F8),
                                    border: InputBorder.none),
                                onChanged: (value) => context.read<WalletCubit>().amountToBeWithdrawnChanged(amountToBeWithdrawn: int.parse(value)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomFilledButton(
                                  text: 'CONTINUE',
                                  onTap: () => context.router.push(const SelectWithdrawalMethodRoute()))
                            ],
                          ),
                        )
                      );
                    },backgroundColor: kWhiteColor,);
                  }),
                  const SizedBox(
                    height: 20,
                  ),
                  buildTile('Reward', 60000, 'Harvest', () {
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: Padding(
                          padding: kDefaultPadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                'How much are you\nwithdrawing?',
                                style: titleText.copyWith(fontSize: 20),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Amount',
                                style: subTitle.copyWith(color: kgreyColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF3F6F8),
                                    border: InputBorder.none),
                                onChanged: (value) => context.read<WalletCubit>().amountToBeWithdrawnChanged(amountToBeWithdrawn: int.parse(value)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomFilledButton(
                                  text: 'CONTINUE',
                                  onTap: () => context.router.push(const SelectWithdrawalMethodRoute()))
                            ],
                          ),
                        ),
                      );
                    });
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTile(String title, int amount, String type, Function() ontap) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0XFFF3F6F8),
          borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: subTitle.copyWith(color: kBlackColor, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('\$' + amount.toString(),
                  style: titleText.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ))
            ],
          ),
          GestureDetector(
            onTap: ontap,
            child: Container(
              alignment: Alignment.center,
              height: 48,
              width: 100,
              // width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryColor,
              ),
              child: Text(
                type,
                style: textButton.copyWith(color: kWhiteColor, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
