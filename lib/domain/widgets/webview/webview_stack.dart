import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:path_provider/path_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';

class WebviewStack extends StatefulWidget {
  const WebviewStack(
      {Key? key, required this.paymentUrl})
      : super(key: key);
  final String paymentUrl;
  @override
  State<WebviewStack> createState() => _WebviewStackState();
}

class _WebviewStackState extends State<WebviewStack> {
  late final WebViewController _controller;
  var loadingPercentage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const PlatformWebViewControllerCreationParams params = PlatformWebViewControllerCreationParams();
    final WebViewController controller =
        WebViewController.fromPlatformCreationParams(params);
    // #enddocregion platform_features

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            setState(() {
              loadingPercentage = progress;
            });
            debugPrint('WebView is loading (progress : $progress%)');
          },
          onPageStarted: (String url) {
            setState(() {
              loadingPercentage = 0;
            });
            debugPrint('Page started loading: $url');
          },
          onPageFinished: (String url) async{
            setState(() {
              loadingPercentage = 100;
            });
            if(url == 'https://fortsuccess.vercel.app/'){
              context.router.push(const InvestmentSuccessRoute());
              // if (await controller.canGoBack()) {
              //     await controller.goBack();
              //   }
            }
            if(url == 'https://fortsuccess.vercel.app/failure.html'){
              // context.router.pop();
              if (await controller.canGoBack()) {
                  await controller.goBack();
                }
            }
            debugPrint('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('''
            Page resource error:
              code: ${error.errorCode}
              description: ${error.description}
              errorType: ${error.errorType}
              isForMainFrame: ${error.isForMainFrame}
                      ''');
          },
          onNavigationRequest:  (NavigationRequest request) async {
            if (request.url == 'https://fortsuccess.vercel.app/') {
              CustomSnackbar.showSnackBar(context, "Payment Successful", false);
              return NavigationDecision.navigate;
            }
            if (request.url == 'https://fortsuccess.vercel.app/failure.html') {
              CustomSnackbar.showSnackBar(context, "Payment failed", true);
              return NavigationDecision.navigate;
            }
            return NavigationDecision.prevent;
          },
        ),
      )
      ..addJavaScriptChannel(
        'Toaster',
        onMessageReceived: (JavaScriptMessage message) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text(message.message)),
          // );
        },
      )
      ..loadRequest(Uri.parse(widget.paymentUrl));

    // #docregion platform_features
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
    // #enddocregion platform_features

    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Stack(
      children: [
        WebViewWidget(controller: _controller),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
              value: loadingPercentage / 100.0,
              backgroundColor: kgreyColor,
              color: klightblue,
              semanticsLabel: "Linear Progress Indicator"),
      ],
    ));
  }
}
