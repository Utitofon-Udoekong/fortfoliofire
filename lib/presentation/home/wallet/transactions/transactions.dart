import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class WalletTransactions extends StatelessWidget {
  const WalletTransactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              buildtile('Fort Shield Investment', "successful", 'N500', 3),
              const Divider(),
              buildtile('Investment Withdrawal', "pending", 'N500', 3),
              const Divider(),
              buildtile('Fort Shield Investment', "successful", 'N500', 3),
              const Divider(),
              buildtile('Fort Shield Investment', "successful", 'N500', 6),
              const Divider(),
              buildtile('Investment Withdrawal', "pending", 'N500', 3),
              const Divider(),
              buildtile('Fort Shield Investment', "successful", 'N500', 12),
              const Divider(),
              buildtile('Fort Shield Investment', "cancelled", 'N500', 3),
              const Divider(),
              buildtile('Investment Withdrawal', "pending", 'N500', 6),
              const Divider(),
              buildtile('Fort Shield Investment', "successful", 'N500', 3),
            ],
          )),
    ));
  }

  Widget buildtile(String title, String status, String amount, int duration) {
    return GestureDetector(
      onTap: (){
        Dialog(
          backgroundColor: Colors.transparent,
          child: ClipPath(
            clipper: PointsClipper(),
            child: Container(
              
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
                Text('28 Jan 2021',
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
                const SizedBox(height: 8,),
                Text(status, style: subTitle.copyWith(
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

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.7;
     
          // Size(WIDTH,(WIDTH*0.625).toDouble()),
    Path path0 = Path();
    path0.moveTo(size.width*0.2512500,size.height*0.8000000);
    path0.lineTo(size.width*0.2737500,size.height*0.7580000);
    path0.lineTo(size.width*0.3000000,size.height*0.8000000);
    path0.lineTo(size.width*0.3237500,size.height*0.7580000);
    path0.lineTo(size.width*0.3475000,size.height*0.7980000);
    path0.lineTo(size.width*0.3737500,size.height*0.7600000);
    path0.lineTo(size.width*0.3975000,size.height*0.8000000);
    path0.lineTo(size.width*0.4250000,size.height*0.7620000);
    path0.lineTo(size.width*0.4500000,size.height*0.7960000);
    path0.lineTo(size.width*0.4750000,size.height*0.7600000);
    path0.lineTo(size.width*0.5000000,size.height*0.8000000);
    path0.lineTo(size.width*0.5250000,size.height*0.7600000);
    path0.lineTo(size.width*0.5512500,size.height*0.7980000);

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}




