import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/injection.dart';

import '../../cubit/investment_cubit.dart';
import 'domiciliary.dart';
import 'naira.dart';

class BankInvestmentPage extends StatefulWidget {
  const BankInvestmentPage({Key? key}) : super(key: key);

  @override
  _BankInvestmentPageState createState() => _BankInvestmentPageState();
}

class _BankInvestmentPageState extends State<BankInvestmentPage>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
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
                  "Invest Using bank\nTransfer",
                  style: titleText,
                ),
                SizedBox(
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
                                            color: kPrimaryColor,
                                            width: 3.0))),
                                controller: _tabController,
                                tabs: const [
                                  Tab(
                                    text: 'Naira',
                                  ),
                                  Tab(
                                    text: 'Domiciliary',
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
                          children: <Widget>[
                            BlocProvider.value(
                             value: getIt<InvestmentCubit>(),
                              child: const NairaAccount(),
                            ),
                            BlocProvider.value(
                             value: getIt<InvestmentCubit>(),
                              child: const DomiciliaryAccount(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
