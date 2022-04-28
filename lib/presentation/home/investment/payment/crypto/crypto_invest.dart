import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:fortfolio/domain/constants/theme.dart';
// import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:fortfolio/infrastructure/auth/external_facade.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';

class CryptoInvestmentPage extends StatelessWidget {
  const CryptoInvestmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InAppWebViewController _webViewController;
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: BlocBuilder<InvestmentCubit, InvestmentState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const LoadingView();
              } else {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
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
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Text(
                      //     'Copy the account details provided below. Transfer the amount you want to fund and your investment plan will be funded immediately!',
                      //     style: subTitle.copyWith(
                      //       color: kgreyColor,
                      //       fontSize: 13,
                      //     )),
                      // const SizedBox(
                      //   height: 15,
                      // ),
                      // Text(
                      //     'Make payments using your personal account with the same name details you have on Fortfolio.',
                      //     style: subTitle.copyWith(
                      //       color: kgreyColor,
                      //       fontSize: 13,
                      //     )),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                          child: SizedBox(
                        child: InAppWebView(
                          initialUrlRequest: URLRequest(
                              url: Uri.parse("https://www.youtube.com/")),
                          initialOptions: options,
                          onWebViewCreated:
                              (InAppWebViewController controller) {
                            _webViewController = controller;
                          },
                          onReceivedServerTrustAuthRequest:
                              (controller, challenge) async {
                            return ServerTrustAuthResponse(
                                action: ServerTrustAuthResponseAction.PROCEED);
                          },
                        ),
                      )),
                      // Container(
                      //   padding: const EdgeInsets.all(8.0),
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(5.0),
                      //       border: Border.all(
                      //           width: 1.5, color: const Color(0XFFF3F6F8))),
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: <Widget>[
                      //       buildtile('Network', 'Binance Smart Chain'),
                      //       const SizedBox(
                      //         height: 15,
                      //       ),
                      //       Flex(
                      //         direction: Axis.horizontal,
                      //         children: <Widget>[
                      //           buildtile(
                      //               'Wallet Address', 'x45566778899990000'),
                      //           IconButton(
                      //               onPressed: () {
                      //                 Clipboard.setData(const ClipboardData(
                      //                         text: "0627767963"))
                      //                     .then((_) {
                      //                   CustomSnackbar.showSnackBar(
                      //                       context, "Text copied", false);
                      //                 });
                      //               },
                      //               icon: const Icon(
                      //                 Icons.copy_rounded,
                      //                 color: kPrimaryColor,
                      //               ))
                      //         ],
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // const SizedBox(
                      //   height: 30,
                      // ),
                      // Align(
                      //   alignment: Alignment.bottomCenter,
                      //   child: CustomFilledButton(
                      //       text: 'I HAVE PAID',
                      //       onTap: () {
                      //         context
                      //             .read<InvestmentCubit>()
                      //             .paymentMethodChanged(
                      //                 paymentMethod: "Crypto");
                      //         context.read<InvestmentCubit>().iHavePaid();
                      //       }),
                      // )
                    ],
                  ),
                );
              }
            },
          ),
        ),
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
