import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:progress_indicators/progress_indicators.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.45),
      ),
      width: size.width,
      height: size.height,
      child: JumpingDotsProgressIndicator(
        fontSize: 100.0,
        numberOfDots: 5,
        milliseconds: 120,
        color: Colors.white,
      ),
    );
  }
}
