import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewStack extends StatefulWidget {
  const WebviewStack({Key? key, required this.controller, required this.paymentUrl}) : super(key: key);
  final Completer<WebViewController> controller;
  final String paymentUrl;
  @override
  State<WebviewStack> createState() => _WebviewStackState();
}

class _WebviewStackState extends State<WebviewStack> {
  @override
  Widget build(BuildContext context) {
    var loadingPercentage = 0;
    return SafeArea(
        child: Stack(
      children: [
        Text("Invest with Crypto", style: titleText),
        WebView(
          initialUrl: widget.paymentUrl,
          onWebViewCreated: (webViewController) {
            widget.controller.complete(webViewController);
          },
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
          javascriptMode: JavascriptMode.unrestricted,
        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
            backgroundColor: kgreyColor,
            color: klightblue,
            semanticsLabel: "Linear Progress Indicator"
          ),
      ],
    )
      );
    
  }
}