import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/home/wallet/overview/wallet_engine.dart';

import 'transactions/transactions.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: TabBar(
                        unselectedLabelColor: const Color(0XFF656565),
                        labelColor: kBlackColor,
                        indicator: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: kPrimaryColor, width: 3.0))),
                        controller: _tabController,
                        tabs: const [
                          Tab(
                            text: 'Overview',
                          ),
                          Tab(
                            text: 'Transactions',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const <Widget>[
                    WalletOverviewEngine(),
                    WalletTransactions()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
