import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';

class FailureView extends StatelessWidget {
  const FailureView({ Key? key, this.title = "Error", required this.message, required this.onpressed }) : super(key: key);
  final String title, message;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    final svg = SvgPicture.asset("images/disonnected.svg");
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svg,
            const SizedBox(height: 4,),
            Text(title, style: titleText.copyWith(fontSize: 18),),
            const SizedBox(height: 2,),
            Text(message, style: subTitle.copyWith(fontSize: 15),),
            const SizedBox(height: 2,),
            CustomFilledButton(text: "Retry", onTap: onpressed)
          ],
        ),
      ),
      
    );
  }
}