import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        DashboardRouter(),
        InvestmentRouter(),
        WalletRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: kPrimaryColor,
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              title: const Text('Dashboard'),
            ),
            SalomonBottomBarItem(
              selectedColor: kPrimaryColor,
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              title: const Text('Investment'),
            ),
            SalomonBottomBarItem(
              selectedColor: kPrimaryColor,
              icon: const Icon(
                Icons.account_balance_wallet_rounded,
                size: 30,
              ),
              title: const Text('Wallet'),
            ),
          ],
        );
      },
    );
  }
}
