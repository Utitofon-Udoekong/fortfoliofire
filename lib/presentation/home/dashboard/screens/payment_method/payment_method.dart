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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: kDefaultPadding,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => {},
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
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                       ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TabBar(
                            unselectedLabelColor: Color(0XFF656565),
                            labelColor: kBlackColor,
                            indicator: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: kPrimaryColor,
                                  width: 3.0
                                )
                              )
                            ),
                            controller: _tabController,
                            tabs: [
                              Tab(
                                text: 'Crypto Wallet',
                              ),
                              Tab(
                                text: 'Banks',
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
                        CryptoWallet(),
                        BankAddress()
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
