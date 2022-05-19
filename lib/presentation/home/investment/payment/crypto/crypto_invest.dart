import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/webview/navigation_controller.dart';
import 'package:fortfolio/domain/widgets/webview/webview_stack.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';

class CryptoInvestmentPage extends StatefulWidget {
  const CryptoInvestmentPage({Key? key}) : super(key: key);

  @override
  State<CryptoInvestmentPage> createState() => _CryptoInvestmentPageState();
}

class _CryptoInvestmentPageState extends State<CryptoInvestmentPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5),(){
      context.read<InvestmentCubit>().startPaymentStatusSubscription();
    });
  }

  @override
  Widget build(BuildContext context) {
    final status = context.watch<InvestmentCubit>().state.paymentStatus;
    final controller = Completer<WebViewController>();
    final String paymentUrl =
        context.select((InvestmentCubit cubit) => cubit.state.charge.hostedUrl);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: InkWell(
          onTap: () {
            context.read<InvestmentCubit>().cancelCharge();
            context.router.pop();
          },
          child: const Icon(Icons.close, color: kWhiteColor,),
        ),
        title: Text("Invest with $status", style: subTitle.copyWith(color: kWhiteColor, fontSize: 16),),
        actions: [
          NavigationControls(controller: controller),
        ],

      ),
      body: WebviewStack(controller: controller, paymentUrl: paymentUrl)
    );
  }

}
