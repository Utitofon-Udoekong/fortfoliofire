import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class DashboardTransactions extends StatelessWidget {
  const DashboardTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transactions =
        context.select((WalletCubit cubit) => cubit.state.transactions);
    final svg = SvgPicture.asset(
      'images/blank-wallet.svg',
      semanticsLabel: 'Blank Wallet',
    );
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: kDefaultPadding,
      child: transactions.isEmpty
          ? Center(
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
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
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
                          onTap: () => context.router
                              .push(const InvestmentPageRoute()))
                    ],
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Text("Transactions", style: titleText,),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: transactions.map((document) {
                        // withdrawal variables
                        String withDescription = "";
                        int withAmount = 0;
                        String withStatus = "";
                        String withId = "";
                        String withPaymentMethod = "";
                        DateTime withcreatedat = DateTime.now();
                        int withduration = 0;
                        int withroi = 0;

                        // investment variables
                        String invDescription = "";
                        int invAmount = 0;
                        String invStatus = "";
                        String invId = "";
                        String invPaymentMethod = "";
                        DateTime invcreatedat = DateTime.now();
                        double invduration = 0.0;
                        int invroi = 0;

                        if (document.investmentItem != null &&
                            document.withdrawalItem == null) {
                          invDescription = document.investmentItem!.description;
                          invAmount = document.investmentItem!.amount;
                          invStatus = document.investmentItem!.status;
                          invId = document.investmentItem!.traxId;
                          invPaymentMethod =
                              document.investmentItem!.paymentMethod;
                          invcreatedat = document.investmentItem!.paymentDate;
                          invduration = document.investmentItem!.duration;
                          invroi = document.investmentItem!.roi;
                        } else if (document.withdrawalItem != null &&
                            document.investmentItem == null) {
                          withDescription =
                              document.withdrawalItem!.description;
                          withAmount = document.withdrawalItem!.amount;
                          withStatus = document.withdrawalItem!.status;
                          withId = document.withdrawalItem!.traxId;
                          withPaymentMethod =
                              document.withdrawalItem!.paymentMethod;
                          withcreatedat = document.withdrawalItem!.createdat;
                          withduration = document.withdrawalItem!.duration;
                          withroi = document.withdrawalItem!.roi;
                        }

                        return document.withdrawalItem != null
                            ? buildWithdrawalTile(
                                amount: withAmount.toString(),
                                date: withcreatedat,
                                duration: withduration,
                                id: withId,
                                paymentMethod: withPaymentMethod,
                                status: withStatus,
                                roi: withroi,
                                title: withDescription,
                                context: context)
                            : buildInvestmentTile(
                                amount: invAmount.toString(),
                                date: invcreatedat,
                                duration: invduration,
                                id: invId,
                                paymentMethod: invPaymentMethod,
                                status: invStatus,
                                roi: invroi,
                                title: invDescription,
                                context: context);
                      }).toList()),
                ],
              ),
            ),
    )));
  }

  Widget buildWithdrawalTile(
      {required String title,
      required String status,
      required String amount,
      required int duration,
      required int roi,
      required DateTime date,
      required String id,
      required String paymentMethod,
      required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        var dialog = Dialog(
          backgroundColor: Colors.transparent,
          child: ClipPath(
            clipper: RPSCustomClipper(),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Icon(
                      Icons.north_east_rounded,
                      color: Color.fromRGBO(16, 180, 107, 1),
                    ),
                    padding: const EdgeInsets.all(3.0),
                    decoration: const BoxDecoration(
                        color: Color(0XFFF0FFFA), shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Withdrawal",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Type of Transaction",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: titleText.copyWith(color: kBlackColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Amount",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "N$amount",
                    style: titleText.copyWith(color: kBlackColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Date",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    date.toString(),
                    style: titleText.copyWith(color: kBlackColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Status",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    status,
                    style: titleText.copyWith(color: status == "Successful"
                          ? const Color(0XFF00C566)
                          : status == "Pending"
                              ? const Color.fromARGB(239, 226, 167, 4)
                              : const Color(0XFFDF1414), fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Transaction Reference",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    id,
                    style: titleText.copyWith(color: kGreenColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payment Method",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    paymentMethod,
                    style: titleText.copyWith(color: kGreenColor, fontSize: 15),
                  ),
                ],
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
                          fontSize: 12, color: kgreyColor.withOpacity(0.4))),
                  TextSpan(text: " ● $duration months")
                ])),
                const SizedBox(
                  height: 8,
                ),
                Text(date.toString(),
                    style: subTitle.copyWith(
                        fontSize: 12, color: const Color(0XFFD8D8D8))),
              ],
            ),
            // Spacer(),
            Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              direction: Axis.vertical,
              children: <Widget>[
                Text(
                  amount,
                  style: titleText.copyWith(
                      fontSize: 20,
                      color: status == "Successful"
                          ? const Color(0XFF00C566)
                          : status == "Pending"
                              ? const Color.fromARGB(239, 226, 167, 4)
                              : const Color(0XFFDF1414),
                      fontWeight: FontWeight.w700),
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
            )
          ],
        ),
      ),
    );
  }

  Widget buildInvestmentTile(
      {required String title,
      required String status,
      required String amount,
      required double duration,
      required DateTime date,
      required String id,
      required int roi,
      required String paymentMethod,
      required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        var dialog = Dialog(
          backgroundColor: Colors.transparent,
          child: ClipPath(
            clipper: RPSCustomClipper(),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Icon(
                      Icons.north_east_rounded,
                      color: Color.fromRGBO(16, 180, 107, 1),
                    ),
                    padding: const EdgeInsets.all(3.0),
                    decoration: const BoxDecoration(
                        color: Color(0XFFF0FFFA), shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Investment",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Type of Transaction",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: titleText.copyWith(color: kBlackColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Amount",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$$amount",
                    style: titleText.copyWith(color: kBlackColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Date",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    date.toString(),
                    style: titleText.copyWith(color: kBlackColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Status",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    status,
                    style: titleText.copyWith(color: status == "Successful"
                          ? const Color(0XFF00C566)
                          : status == "Pending"
                              ? const Color.fromARGB(239, 226, 167, 4)
                              : const Color(0XFFDF1414), fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Transaction Reference",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    id,
                    style: titleText.copyWith(color: kGreenColor, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payment Method",
                    style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    paymentMethod,
                    style: titleText.copyWith(color: kGreenColor, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        );
        showDialog(context: context, builder: (context){
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
                          fontSize: 12, color: kgreyColor.withOpacity(0.4))),
                  TextSpan(text: " ● $duration months")
                ])),
                const SizedBox(
                  height: 8,
                ),
                Text(date.toString(),
                    style: subTitle.copyWith(
                        fontSize: 12, color: const Color(0XFFD8D8D8))),
              ],
            ),
            // Spacer(),
            Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              direction: Axis.vertical,
              children: <Widget>[
                Text(
                  amount,
                  style: titleText.copyWith(
                      fontSize: 20,
                      color: status == "Successful"
                          ? const Color(0XFF00C566)
                          : status == "Pending"
                              ? const Color.fromARGB(239, 226, 167, 4)
                              : const Color(0XFFDF1414),
                      fontWeight: FontWeight.w700),
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
            )
          ],
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
  bool shouldReclip(CustomClipper old) => false;
}
