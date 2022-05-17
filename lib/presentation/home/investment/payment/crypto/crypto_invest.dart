import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/widgets/webview/webview_stack.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CryptoInvestmentPage extends StatefulWidget {
  const CryptoInvestmentPage({Key? key}) : super(key: key);

  @override
  State<CryptoInvestmentPage> createState() => _CryptoInvestmentPageState();
}

class _CryptoInvestmentPageState extends State<CryptoInvestmentPage> {

  @override
  void initState() {
    super.initState();
    context.read<InvestmentCubit>().startPaymentStatusSubscription();
  
  }

  @override
  Widget build(BuildContext context) {
    final status = context.watch<InvestmentCubit>().state.paymentStatus;
    final controller = Completer<WebViewController>();
    final String paymentUrl =
        context.select((InvestmentCubit cubit) => cubit.state.charge.hostedUrl);
    var loadingPercentage = 0;
  

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: InkWell(
          onTap: () {
            context.read<InvestmentCubit>().cancelCharge();
            context.router.pop();
          },
          child: const Icon(Icons.close),
        ),
        title: Text("Invest with Crypto", style: subTitle.copyWith(color: kBlackColor, fontSize: 18),),
      ),
      body: WebviewStack(controller: controller, paymentUrl: paymentUrl)
    );
  }

  Widget customButton({required Color color}) {
    return Container();
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
