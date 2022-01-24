import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: klightblue,
          backgroundColor: Colors.white60,
        ),
      ),
    );
  }
}
