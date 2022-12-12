import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:intl/intl.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/cubit/payment_method_cubit.dart';
import 'package:jiffy/jiffy.dart';

import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/core/validator_helpers.dart';
import 'package:fortfolio/domain/widgets/custom_outlined_button.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class FortCryptoInvestmentInfo extends StatelessWidget {
  const FortCryptoInvestmentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##0.##", "en_US");
    final selectedAddress = context.select((WalletCubit element) => element.state.withdrawalDetails["address"]);
    final balance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortCryptoInvestmentBalance);
    final isLoading = context.select((WalletCubit walletCubit) =>
        walletCubit.state.loading);
    final yield = context.select(
        (WalletCubit walletCubit) => walletCubit.state.fortCryptoYieldBalance);
    final activeInvestments = context
        .select((WalletCubit walletCubit) =>
            walletCubit.state.fortCryptoInvestments.where((element) =>
                element.status == "Pending" || element.status == "Successful"))
        .toList();
    return Scaffold(
      body: MultiBlocListener(
         listeners: [
              BlocListener<WalletCubit, WalletState>(
              listenWhen: (previous, current) =>
                  current.success == "Investment harvested",
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.success, false);
                context.read<WalletCubit>().resetSuccess();
              },
      
            ),
              BlocListener<WalletCubit, WalletState>(
              listenWhen: (previous, current) => previous.failure !=
                  current.failure && current.failure.isNotEmpty,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.failure, false);
                context.read<WalletCubit>().resetSuccess();
              },
      
            ),
            
          ],
                  child: LoadingView(
                    isLoading: isLoading,
                    child: SafeArea(
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
                            "Fortcrypto",
                            style: titleText.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          )
                        ]),
                        const SizedBox(height: 30),
                        Text("Total", style: subTitle.copyWith(fontSize: 12)),
                        const SizedBox(height: 8),
                        Text("\$ ${formatter.format(balance)}",
                            style: titleText.copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        const SizedBox(height: 30),
                        Text("Available for yield",
                            style: subTitle.copyWith(fontSize: 12)),
                        const SizedBox(height: 8),
                        Text("\$ ${formatter.format(yield)}",
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
                              return BuildTile(
                                context: context,
                                selectedAddress: selectedAddress,
                                title:
                                    '${activeInvestments[index].planName} / ${activeInvestments[index].duration.toInt()} month(s)',
                                amount:
                                    '\$${formatter.format(activeInvestments[index].amount)}',
                                ontap: () {
                                  context
                                      .read<WalletCubit>()
                                      .investmentToBeWithdrawnChanged(
                                          investmentToBeWithdrawn:
                                              activeInvestments[index]);
                                  context.router.push(const WithdrawalPageRoute());
                                },
                                ontapHarvest: () {
                                  context
                                      .read<WalletCubit>()
                                      .investmentToBeWithdrawnChanged(
                                          investmentToBeWithdrawn:
                                              activeInvestments[index]);
                                  context.read<WalletCubit>().harvestInvestment(
                                      docId:
                                          "${activeInvestments[index].uid}${activeInvestments[index].traxId}",
                                      amount: activeInvestments[index].planYield);
                                },
                                pending: activeInvestments[index].status == "Pending",
                                isDue: activeInvestments[index].dueDate.isToday,
                                harvDate: activeInvestments[index].nextHarvestDate,
                                isHarvestDue:
                                    (activeInvestments[index].nextHarvestDate == null &&
                                            activeInvestments[index].planYield == 0)
                                        ? false
                                        : (activeInvestments[index].nextHarvestDate ==
                                                    null &&
                                                activeInvestments[index].planYield > 0)
                                            ? true
                                            : (Jiffy(activeInvestments[index]
                                                        .nextHarvestDate)
                                                    .isSameOrAfter(DateTime.now()) &&
                                                activeInvestments[index].planYield > 0),
                                daysLeft:
                                    Jiffy(activeInvestments[index].dueDate).fromNow(),
                                planYield:
                                    '\$${formatter.format(activeInvestments[index].planYield)}',
                              );
                            }),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomOutlinedButton(
                              text: 'INVEST',
                              onTap: () => context.router
                                  .push(const FortCryptoInvestmentRoute())),
                        ),
                      ],
                    ),
                                  ),
                                )),
                  ),
      ),
    );
  }
}

class SelectAccountModal extends StatelessWidget {
  final String selectedAddress;
  final Function() ontapHarvest;
  const SelectAccountModal({super.key, required this.selectedAddress, required this.ontapHarvest});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 4.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: kWhiteColor,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
    child: GestureDetector(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocSelector<PaymentMethodCubit, PaymentMethodState,
                    List<CryptoWallet>>(
                  selector: (state) {
                    return state.cryptoAddresses;
                  },
                  builder: (context, cryptoAddresses) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: cryptoAddresses.map((address) {
                        return buildAddressTile(
                            address: address.address,
                            ontap: () => context
                                .read<WalletCubit>()
                                .withdrawalDetailsChanged(
                                    withdrawalDetails: address.toMap()),
                            label: address.walletLabel,
                            selected: selectedAddress == address.address);
                      }).toList(),
                    );
                  },
                ),
                BlocSelector<PaymentMethodCubit, PaymentMethodState,
                    List<CryptoWallet>>(
                  selector: (state) {
                    return state.generalCryptoAddresses;
                  },
                  builder: (context, cryptoAddresses) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: cryptoAddresses.map((address) {
                        return buildAddressTile(
                            address: address.address,
                            ontap: () => context
                                .read<WalletCubit>()
                                .withdrawalDetailsChanged(
                                    withdrawalDetails: address.toMap()),
                            label: address.walletLabel,
                            selected: selectedAddress == address.address);
                      }).toList(),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocSelector<WalletCubit, WalletState, bool>(
                  selector: (state) {
                    return state.withdrawalDetails.isEmpty;
                  },
                  builder: (context, detailsDontExists) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomAuthFilledButton(
                        text: "CONTINUE",
                        onTap: ontapHarvest,
                        disabled: detailsDontExists,
                      ),
                    );
                  },
                )
        ]
      )
    )
  );
  }
}


Widget buildAddressTile({required String address, required Function() ontap, required String label, required bool selected}) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0XFFF3F6F8),
            borderRadius: BorderRadius.circular(5.0)),
        child: ListTile(
          title: Text(
            address,
            style: titleText.copyWith(fontSize: 15),
          ),
          subtitle: Text(
            label,
            style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
          ),
          trailing: Icon(
            selected ? Icons.circle_rounded : Icons.circle_outlined,
            color: const Color(0XFF00ADEE),
          ),
        ),
      ),
    );
  }

  class BuildTile extends StatelessWidget {
    final String title;
    final BuildContext context;
    final String amount;
    final String selectedAddress;
    final String planYield;
    final Function() ontap;
    final Function() ontapHarvest;
    final bool pending;
    final bool isDue;
    final bool isHarvestDue;
    final DateTime? harvDate;
    final String daysLeft;
    const BuildTile({super.key, required this.title, required this.context, required this.amount, required this.selectedAddress, required this.planYield, required this.ontap, required this.ontapHarvest, required this.pending, required this.isDue, required this.isHarvestDue, this.harvDate, required this.daysLeft});
  
    @override
    Widget build(BuildContext context) {
      return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      margin: const EdgeInsets.only(bottom: 10),
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
              const SizedBox(height: 2.5),
              Text(
                pending ? "***" : amount,
                style: titleText.copyWith(fontSize: 15),
              ),
              const SizedBox(height: 2.5),
              Text(
                planYield,
                style: subTitle.copyWith(fontSize: 12),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isHarvestDue ? GestureDetector(
                onTap: () => showModalBottomSheet<dynamic>(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => SelectAccountModal(selectedAddress: selectedAddress, ontapHarvest: ontapHarvest)
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kPrimaryColor),
                  child: Text(
                    'Harvest',
                    style:
                        textButton.copyWith(color: kWhiteColor, fontSize: 15),
                  ),
                ),
              ) : Tooltip(
               message: pending ? "Pending Investment" : harvDate == null ? "Investment yield balance is too low" : "Unlocks after 30 days",
                triggerMode: TooltipTriggerMode.tap,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: kSecondaryColor),
                height: 50,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: null,
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(3, 66, 109, 0.65)),
                    child: Text(
                      "Pending",
                      style:
                          textButton.copyWith(color: kWhiteColor, fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              isDue
                  ? GestureDetector(
                      onTap: pending ? null : ontap,
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: pending
                              ? const Color.fromRGBO(3, 66, 109, 0.65)
                              : kPrimaryColor,
                        ),
                        child: Text(
                          pending ? 'Pending' : 'Withdraw',
                          style: textButton.copyWith(
                              color: kWhiteColor, fontSize: 15),
                        ),
                      ),
                    )
                  : pending
                      ? GestureDetector(
                          onTap: null,
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromRGBO(3, 66, 109, 0.65)),
                            child: Text(
                              'Pending',
                              style: textButton.copyWith(
                                  color: kWhiteColor, fontSize: 15),
                            ),
                          ),
                        )
                      : Tooltip(
                          message: "Unlocks $daysLeft",
                          triggerMode: TooltipTriggerMode.tap,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: kSecondaryColor),
                          height: 50,
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(3, 66, 109, 0.65),
                            ),
                            child: Text(
                              'Withdraw',
                              style: textButton.copyWith(
                                  color: kWhiteColor, fontSize: 15),
                            ),
                          ),
                        ),
            ],
          )
        ],
      ));
    }
  }
