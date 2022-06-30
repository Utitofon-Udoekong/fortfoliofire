import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NavigationControls extends StatelessWidget {
  const NavigationControls({required this.controller, Key? key})
      : super(key: key);

  final Completer<WebViewController> controller;

  @override
  Widget build(BuildContext context) {
    bool isIOS = Platform.isIOS;
    return FutureBuilder<WebViewController>(
      future: controller.future,
      builder: (context, snapshot) {
        final WebViewController? controller = snapshot.data;
        if (snapshot.connectionState != ConnectionState.done ||
            controller == null) {
          return Row(
            children: <Widget>[
              Icon(Icons.adaptive.arrow_back, size: 13,),
              Icon(Icons.adaptive.arrow_forward, size: 13,),
              const Icon(Icons.replay, size: 13,),
            ],
          );
        }

        return Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.adaptive.arrow_back, size: 13),
              onPressed: () async {
                if (await controller.canGoBack()) {
                  await controller.goBack();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No back history item')),
                  );
                  return;
                }
              },
            ),
            IconButton(
              icon: Icon(Icons.adaptive.arrow_forward, size: 13),
              onPressed: () async {
                if (await controller.canGoForward()) {
                  await controller.goForward();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No forward history item')),
                  );
                  return;
                }
              },
            ),
            IconButton(
              icon: Icon(isIOS ? CupertinoIcons.arrow_counterclockwise : Icons.replay, size: 13),
              onPressed: () {
                controller.reload();
              },
            ),
          ],
        );
      },
    );
  }
}
