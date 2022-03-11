import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/infrastructure/core/firestore_helpers.dart';
import 'package:fortfolio/presentation/home/failure_view.dart';

class WalletTransactions extends StatelessWidget {
  const WalletTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot> _withdrawalStream =
        FirebaseFirestore.instance.authUserCollection.doc(FirebaseAuth.instance.currentUser!.uid).collection("withdrawals").snapshots();
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: StreamBuilder(
            stream: _withdrawalStream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return FailureView(onpressed: () => {});
                // return Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingView();
              }
              return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: snapshot.data!.docs.map(
                      (DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data()! as Map<String, dynamic>;
                    final String description = data["description"];
                    final int amount = data["amount"];
                    final String status = data["status"];
                    final String traxId = data["traxId"];
                    final String paymentMethod = data["paymentMethod"];
                    final DateTime createdat = data["createdat"];
                    return Column(
                      children: [
                        buildtile(amount: amount.toString(), date: createdat, duration: 3, id: traxId, paymentMethod: paymentMethod, status: status, title: description),
                        const Divider()
                      ],
                    );
                  }
                      ).toList());
            }),
      ),
    ));
  }

  Widget buildtile({required String title, required String status, required String amount, required int duration, required DateTime date, required String id, required String paymentMethod}) {
    return GestureDetector(
      onTap: () {
        Dialog(
          backgroundColor: Colors.transparent,
          child: ClipPath(
            clipper: PointsClipper(),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
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
                    style: titleText.copyWith(color: kGreenColor, fontSize: 15),
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
                      text: "30% returns",
                      style: subTitle.copyWith(
                          fontSize: 12, color: kgreyColor.withOpacity(0.4))),
                  TextSpan(text: "● $duration months")
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
                      color: status == "successful"
                          ? const Color(0XFF00C566)
                          : status == "pending"
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
                        color: kgreyColor,
                        fontWeight: FontWeight.w500))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.7;

    // Size(WIDTH,(WIDTH*0.625).toDouble()),
    Path path0 = Path();
    path0.moveTo(size.width * 0.2512500, size.height * 0.8000000);
    path0.lineTo(size.width * 0.2737500, size.height * 0.7580000);
    path0.lineTo(size.width * 0.3000000, size.height * 0.8000000);
    path0.lineTo(size.width * 0.3237500, size.height * 0.7580000);
    path0.lineTo(size.width * 0.3475000, size.height * 0.7980000);
    path0.lineTo(size.width * 0.3737500, size.height * 0.7600000);
    path0.lineTo(size.width * 0.3975000, size.height * 0.8000000);
    path0.lineTo(size.width * 0.4250000, size.height * 0.7620000);
    path0.lineTo(size.width * 0.4500000, size.height * 0.7960000);
    path0.lineTo(size.width * 0.4750000, size.height * 0.7600000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.8000000);
    path0.lineTo(size.width * 0.5250000, size.height * 0.7600000);
    path0.lineTo(size.width * 0.5512500, size.height * 0.7980000);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
