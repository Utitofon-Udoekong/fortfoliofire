import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

class WalletTransactions extends StatelessWidget {
  const WalletTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transactions =
        context.select((WalletCubit cubit) => cubit.state.transactions);
    final svg = SvgPicture.asset(
      'images/blank-wallet.svg',
      semanticsLabel: 'Blank Wallet',
    );
    final List<String> _chipLabel = [
      'All Transactions',
      'Investments',
      'Withdrawals'
    ];
    final formatter = NumberFormat("#,##0.##", "en_US");
    final currentSort =
        context.select((WalletCubit cubit) => cubit.state.currentSort);
    ScreenshotController screenshotController = ScreenshotController();
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
          body: MultiBlocListener(
      listeners: [
        BlocListener<WalletCubit, WalletState>(
              listenWhen: (previous, current) =>
                  current.success == "Transaction cancelled",
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.success, false);
              },
      
            ),
              BlocListener<WalletCubit, WalletState>(
              listenWhen: (previous, current) => previous.failure !=
                  current.failure && current.failure.isNotEmpty,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.failure, true);
              },
            ),
      ],
      child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ChoiceChip(
                      label: Text(_chipLabel[index],
                          style: subTitle.copyWith(
                              color: kPrimaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),
                      selected: currentSort == _chipLabel[index],
                      selectedColor: klightblue.withOpacity(0.4),
                      onSelected: (value) {
                        context
                            .read<WalletCubit>()
                            .toggleCurrentSort(currentSort: _chipLabel[index]);
                        if (value == false) {
                          return;
                        }
                        if (_chipLabel[index] == "Investments") {
                          context.read<WalletCubit>().sortInvestments();
                          return;
                        }
                        if (_chipLabel[index] == "Withdrawals") {
                          context.read<WalletCubit>().sortWithdrawals();
                          return;
                        }
                        if (_chipLabel[index] == "All Transactions") {
                          context.read<WalletCubit>().initTransactions();
                          return;
                        }
                      },
                    );
                  },
                )),
            const SizedBox(
              height: 20,
            ),
            transactions.isEmpty
                ? Center(
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
                          'No Transactions recorded yet. Make an investment to get started',
                          style: subTitle,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomFilledButton(
                            text: "GET STARTED",
                            onTap: () => context.pushRoute(const HomePageRoute(
                                children: [InvestmentPageRoute()])))
                      ],
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: transactions.map((document) {
                      return BuildTransactionTile(
                          amount: formatter.format(document.amount),
                          date: document.createdat,
                          duration: document.duration,
                          id: document.traxId,
                          paymentMethod: document.paymentMethod,
                          status: document.status,
                          roi: document.roi,
                          title: document.description,
                          type: document.type,
                          currency: document.currency,
                          screenshotController: screenshotController,
                          coin: document.coin,
                          ontap: () async {
                            await screenshotController
                                .capture(
                                    pixelRatio: pixelRatio,
                                    delay: const Duration(milliseconds: 10))
                                .then((Uint8List? image) async {
                              if (image != null) {
                                final directory =
                                    await getApplicationDocumentsDirectory();
                                final imagePath =
                                    await File('//${directory.path}/image.png')
                                        .create();
                                await imagePath.writeAsBytes(image);
                                await Share.shareXFiles(
                                    [XFile(imagePath.path)]);
                              }
                            });
                          });
                    }).toList(),
                  ))
          ])),
    ));
  }

}

class BuildTransactionTile extends StatelessWidget {
  final String title;
  final String status;
  final String amount;
  final String type;
  final int duration;
  final int roi;
  final DateTime date;
  final String id;
  final String paymentMethod;
  final String currency;
  final String? coin;
  final ScreenshotController screenshotController;
  final Function() ontap;
  const BuildTransactionTile({super.key, required this.title, required this.status, required this.amount, required this.type, required this.duration, required this.roi, required this.date, required this.id, required this.paymentMethod, required this.currency, required this.screenshotController, required this.ontap, this.coin});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<WalletCubit, WalletState>(
              listenWhen: (previous, current) =>
                  current.success == "Transaction cancelled",
              listener: (context, state) {
                context.router.pop();
              },
      
            ),
              BlocListener<WalletCubit, WalletState>(
              listenWhen: (previous, current) => previous.failure !=
                  current.failure && current.failure.isNotEmpty,
              listener: (context, state) {
                context.router.pop();
              },
            ),
      ],
      child: GestureDetector(
        onTap: () {
          var dialog = Dialog(
            backgroundColor: Colors.transparent,
            child: ClipPath(
              clipper: RPSCustomClipper(),
              child: Screenshot(
                controller: screenshotController,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3.0),
                            decoration: const BoxDecoration(
                                color: Color(0XFFF0FFFA), shape: BoxShape.circle),
                            child: const Icon(
                              Icons.north_east_rounded,
                              color: Color.fromRGBO(16, 180, 107, 1),
                            ),
                          ),
                          GestureDetector(
                            onTap: ontap,
                            child: Container(
                              padding: const EdgeInsets.all(3.0),
                              decoration: const BoxDecoration(
                                  color: Color(0XFFF0FFFA),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.adaptive.share,
                                color: kBlackColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        type,
                        style:
                            subTitle.copyWith(color: kBlackColor, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Type of Transaction",
                        style:
                            subTitle.copyWith(color: kBlackColor, fontSize: 13),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        title,
                        style:
                            titleText.copyWith(color: kBlackColor, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Amount",
                        style:
                            subTitle.copyWith(color: kBlackColor, fontSize: 13),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${paymentMethod == 'Crypto' ? coin : currency}$amount",
                        style:
                            titleText.copyWith(color: kBlackColor, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Date",
                        style:
                            subTitle.copyWith(color: kBlackColor, fontSize: 13),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        Jiffy(date).yMMMMEEEEdjm,
                        style:
                            titleText.copyWith(color: kBlackColor, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Status",
                        style:
                            subTitle.copyWith(color: kBlackColor, fontSize: 13),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        status,
                        style: titleText.copyWith(
                            color: status == "Successful"
                                ? const Color(0XFF00C566)
                                : status == "Pending"
                                    ? const Color.fromARGB(239, 226, 167, 4)
                                    : status == "Withdrawn"
                                        ? const Color.fromARGB(238, 51, 51, 51)
                                        : const Color(0XFFDF1414),
                            fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Transaction Reference",
                        style:
                            subTitle.copyWith(color: kBlackColor, fontSize: 13),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        id,
                        style:
                            titleText.copyWith(color: kGreenColor, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Payment Method",
                        style:
                            subTitle.copyWith(color: kBlackColor, fontSize: 13),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        paymentMethod,
                        style:
                            titleText.copyWith(color: kGreenColor, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Visibility(
                          visible: type == "Withdrawal" && status == "Pending",
                          child: GestureDetector(
                          onTap: () {
                              context
                                    .read<WalletCubit>()
                                    .cancelWithdrawal(traxId: id);},
                          child: Container(
                            height: 35,
                            width: MediaQuery.of(context).size.width,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: kRedColor,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text(
                                  "CANCEL",
                                  style: textButton.copyWith(color: kWhiteColor, fontSize: 14))),
                        ),
                          )
                    ],
                  ),
                ),
              ),
            ),
          );
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return dialog;
              });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0XFFF3F6F8)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flex(
                direction: Axis.vertical,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: titleText.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "$roi% returns",
                        style: subTitle.copyWith(
                            fontSize: 12, color: kBlackColor.withOpacity(0.7))),
                    TextSpan(text: " ● $duration months")
                  ])),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(Jiffy(date).yMMMMd,
                      style: subTitle.copyWith(
                          fontSize: 12, color: const Color(0xFF1F1E1E))),
                ],
              ),
              // Spacer(),
              Flex(
                crossAxisAlignment: CrossAxisAlignment.end,
                direction: Axis.vertical,
                children: <Widget>[
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: paymentMethod == 'Crypto' ? coin : currency,
                          style: nairaText.copyWith(
                              fontSize: 16,
                              color: status == "Successful"
                                  ? const Color(0XFF00C566)
                                  : status == "Pending"
                                      ? const Color.fromARGB(239, 226, 167, 4)
                                      : const Color(0XFFDF1414),
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: amount,
                          style: titleText.copyWith(
                              fontSize: 16,
                              color: status == "Successful"
                                  ? const Color(0XFF00C566)
                                  : status == "Pending"
                                      ? const Color.fromARGB(239, 226, 167, 4)
                                      : const Color(0XFFDF1414),
                              fontWeight: FontWeight.w700),
                        ),
                      ]
                    )
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(status,
                      style: subTitle.copyWith(
                          fontSize: 12,
                          color: status == "Successful"
                              ? const Color(0XFF00C566)
                              : status == "Pending"
                                  ? const Color.fromARGB(239, 226, 167, 4)
                                  : const Color(0XFFDF1414),
                          fontWeight: FontWeight.w500))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var smallLineLength = size.width / 20;
    const smallLineHeight = 20;
    var path = Path();

    path.lineTo(0, size.height);
    for (int i = 1; i <= 20; i++) {
      if (i % 2 == 0) {
        path.lineTo(smallLineLength * i, size.height);
      } else {
        path.lineTo(smallLineLength * i, size.height - smallLineHeight);
      }
    }
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
