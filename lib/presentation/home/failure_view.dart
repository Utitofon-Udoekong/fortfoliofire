import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class FailureView extends StatelessWidget {
  const FailureView({ Key? key, this.title = "Error", this.message = "Something went wrong", required this.onpressed }) : super(key: key);
  final String title, message;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error,
              color: Colors.red,
              size: 50,
            ),
            const SizedBox(height: 4,),
            Text(title, style: titleText,),
            const SizedBox(height: 2,),
            Text(message, style: subTitle,),
            const SizedBox(height: 2,),
            ElevatedButton(onPressed: onpressed, child: const Text('Retry'))
          ],
        ),
      ),
      
    );
  }
}