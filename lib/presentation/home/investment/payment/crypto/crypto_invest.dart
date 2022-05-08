import 'dart:collection';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:fortfolio/domain/constants/theme.dart';
// import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
// import 'package:fortfolio/infrastructure/auth/external_facade.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class CryptoInvestmentPage extends StatefulWidget {
  const CryptoInvestmentPage({Key? key}) : super(key: key);

  @override
  State<CryptoInvestmentPage> createState() => _CryptoInvestmentPageState();
}

class _CryptoInvestmentPageState extends State<CryptoInvestmentPage> {
  final GlobalKey webViewKey = GlobalKey();
  InAppWebViewController? webViewController;
  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));
  late PullToRefreshController pullToRefreshController;
  late ContextMenu contextMenu;
  String url = "";
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    contextMenu = ContextMenu(
        menuItems: [
          ContextMenuItem(
              androidId: 1,
              iosId: "1",
              title: "Special",
              action: () async {
                print("Menu item Special clicked!");
                print(await webViewController?.getSelectedText());
                await webViewController?.clearFocus();
              })
        ],
        options: ContextMenuOptions(hideDefaultSystemContextMenuItems: false),
        onCreateContextMenu: (hitTestResult) async {
          print("onCreateContextMenu");
          print(hitTestResult.extra);
          print(await webViewController?.getSelectedText());
        },
        onHideContextMenu: () {
          print("onHideContextMenu");
        },
        onContextMenuActionItemClicked: (contextMenuItemClicked) async {
          var id = (Platform.isAndroid)
              ? contextMenuItemClicked.androidId
              : contextMenuItemClicked.iosId;
          print("onContextMenuActionItemClicked: " +
              id.toString() +
              " " +
              contextMenuItemClicked.title);
        });

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        if (Platform.isAndroid) {
          webViewController?.reload();
        } else if (Platform.isIOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final String paymentUrl = context.select((InvestmentCubit cubit) => cubit.state.charge.url);
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: kDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => context.router.pop(),
                  child: const Icon(Icons.close),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Invest With Crypto",
                  style: titleText,
                ),
                const SizedBox(
                  height: 40,
                ),
                // TextField(
                //   decoration:
                //       const InputDecoration(prefixIcon: Icon(Icons.search)),
                //   controller: urlController,
                //   keyboardType: TextInputType.url,
                //   onSubmitted: (value) {
                //     var url = Uri.parse(value);
                //     if (url.scheme.isEmpty) {
                //       url =
                //           Uri.parse("https://www.google.com/search?q=" + value);
                //     }
                //     webViewController?.loadUrl(
                //         urlRequest: URLRequest(url: url));
                //   },
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                BlocSelector<InvestmentCubit, InvestmentState, bool>(
                  selector: (state) {
                    return state.charge.url.isEmpty;
                  },
                  builder: (context, noUrlExists) {
                    if (noUrlExists) {
                      return Visibility(
                          visible: noUrlExists,
                          child: CustomFilledButton(
                              text: "Initialize Portal",
                              onTap: () => context
                                  .read<InvestmentCubit>()
                                  .createCharge()));
                    } else {
                      return Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFFF3F6F8),
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: kPrimaryColor,
                                width: 2),
                            borderRadius: BorderRadius.circular(6.0)),
                        child: InAppWebView(
                          key: webViewKey,
                          // contextMenu: contextMenu,
                          initialUrlRequest:
                              URLRequest(url: Uri.parse(paymentUrl)),
                          // initialFile: "assets/index.html",
                          initialUserScripts:
                              UnmodifiableListView<UserScript>([]),
                          initialOptions: options,
                          pullToRefreshController: pullToRefreshController,
                          onWebViewCreated: (controller) {
                            webViewController = controller;
                          },
                          onLoadStart: (controller, url) {
                            setState(() {
                              this.url = url.toString();
                              urlController.text = this.url;
                            });
                          },
                          androidOnPermissionRequest:
                              (controller, origin, resources) async {
                            return PermissionRequestResponse(
                                resources: resources,
                                action: PermissionRequestResponseAction.GRANT);
                          },
                          shouldOverrideUrlLoading:
                              (controller, navigationAction) async {
                            var uri = navigationAction.request.url!;

                            if (![
                              "http",
                              "https",
                              "file",
                              "chrome",
                              "data",
                              "javascript",
                              "about"
                            ].contains(uri.scheme)) {
                              if (await canLaunchUrl(Uri.parse(url))) {
                                // Launch the App
                                await launchUrl(
                                  Uri.parse(url),
                                );
                                // and cancel the request
                                return NavigationActionPolicy.CANCEL;
                              }
                            }

                            return NavigationActionPolicy.ALLOW;
                          },
                          onLoadStop: (controller, url) async {
                            pullToRefreshController.endRefreshing();
                            setState(() {
                              this.url = url.toString();
                              urlController.text = this.url;
                            });
                          },
                          onLoadError: (controller, url, code, message) {
                            pullToRefreshController.endRefreshing();
                          },
                          onProgressChanged: (controller, progress) {
                            if (progress == 100) {
                              pullToRefreshController.endRefreshing();
                            }
                            setState(() {
                              this.progress = progress / 100;
                              urlController.text = url;
                            });
                          },
                          onUpdateVisitedHistory:
                              (controller, url, androidIsReload) {
                            setState(() {
                              this.url = url.toString();
                              urlController.text = this.url;
                            });
                          },
                          onConsoleMessage: (controller, consoleMessage) {
                            print(consoleMessage);
                          },
                        ),
                      ));
                    }
                  },
                ),
                // TextField(
                //   decoration:
                //       const InputDecoration(prefixIcon: Icon(Icons.search)),
                //   controller: urlController,
                //   keyboardType: TextInputType.url,
                //   onSubmitted: (value) {
                //     var url = Uri.parse(value);
                //     if (url.scheme.isEmpty) {
                //       url =
                //           Uri.parse("https://www.google.com/search?q=" + value);
                //     }
                //     webViewController?.loadUrl(
                //         urlRequest: URLRequest(url: url));
                //   },
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                Container(
                    padding: const EdgeInsets.all(10.0),
                    child: progress < 1.0
                        ? LinearProgressIndicator(value: progress)
                        : Container()),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Icon(Icons.arrow_back),
                      onPressed: () {
                        webViewController?.goBack();
                      },
                    ),
                    ElevatedButton(
                      child: const Icon(Icons.arrow_forward),
                      onPressed: () {
                        webViewController?.goForward();
                      },
                    ),
                    ElevatedButton(
                      child: const Icon(Icons.refresh),
                      onPressed: () {
                        webViewController?.reload();
                      },
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }

  Widget buildtile(String title, String subtitle) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: subTitle.copyWith(
              fontSize: 12, color: kgreyColor.withOpacity(0.7)),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          subtitle,
          style: titleText.copyWith(fontSize: 15),
        )
      ],
    );
  }
}
