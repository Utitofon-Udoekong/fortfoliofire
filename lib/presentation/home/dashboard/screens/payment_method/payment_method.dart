import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

import 'bank/bank_wallet.dart';
import 'crypto/crypto_wallet.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
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
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 30,
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
                    "Payment Method",
                    style: titleText,
                  ),
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
                                  width: 3.0
                                )
                              )
                            ),
                            controller: _tabController,
                            tabs: const [
                              Tab(
                                text: 'Banks',
                              ),
                              Tab(
                                text: 'Crypto Wallet',
                              )
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
                        BankAddressPage(),
                        CryptoWalletPage()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
