import 'dart:async';
import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  final void Function() onTimerCompleted;

  ///The total amount of seconds until the SMS code will timeout.
  final int smsCodeTimeoutSeconds;
  const CountDownTimer({
    Key? key,
    required this.onTimerCompleted,
    required this.smsCodeTimeoutSeconds,
  }) : super(key: key);

  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  ///The timer instance.
  late Timer? _timer;

  ///The number of seconds past since the timer started.
  int _seconds = 0;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  ///Start the timer.
  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_seconds == widget.smsCodeTimeoutSeconds) {
          timer.cancel();
          widget.onTimerCompleted();
        } else {
          setState(() {
            _seconds++;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  ///Format [value] seconds into the mm:ss format.
  String formatSeconds(int value) =>
      '${formatDecimal(value ~/ 60)}:${formatDecimal(value % 60)}';

  ///Format decimals into the ss format.
  String formatDecimal(int value) => value < 10 ? '0$value' : value.toString();

  @override
  Widget build(BuildContext context) {
    return Text(
      formatSeconds(widget.smsCodeTimeoutSeconds - _seconds),
      style: const TextStyle(color: Colors.grey),
    );
  }
}
