import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/presentation/home/wallet/overview/wallet_overview.dart';
import '../cubit/wallet_cubit.dart';

class WalletOverviewEngine extends StatefulWidget {
  const WalletOverviewEngine({Key? key}) : super(key: key);

  @override
  State<WalletOverviewEngine> createState() => _WalletOverviewEngineState();
}

class _WalletOverviewEngineState extends State<WalletOverviewEngine> {
  @override
  void initState() {
    context.read<WalletCubit>().initWalletBalance();
    context.read<WalletCubit>().initTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const WalletOverview();
  }
}
