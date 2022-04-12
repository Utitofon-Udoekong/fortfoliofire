import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return AutoTabsScaffold(
      scaffoldKey: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          backgroundColor: kWhiteColor,
          leading: InkWell(
            onTap: () {
              scaffoldKey.currentState!.openDrawer();
            },
            child: const Image(
              image: AssetImage('images/nav.png'),
              width: 20,
              height: 20,
            ),
          ),
          iconTheme: const IconThemeData(color: Color(0XFF130F26)),
          elevation: 0,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: const BoxDecoration(
                color: Color(0XFFF5F7FA),
                shape: BoxShape.circle,
              ),
              width: 30,
              alignment: Alignment.center,
              height: 30,
              child: IconButton(
                  onPressed: () => context.router.push(const NotificationEngineRoute()),
                  icon: const Icon(
                    Icons.notifications,
                    size: 15,
                  )),
            )
          ],
        );
      },
      routes: const [
        DashboardRoute(),
        InvestmentPageRoute(),
        WalletRoute(),
      ],
      drawer: const SafeArea(child: MainDrawer()),
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.fromLTRB( 20, 20, 20, 10 ),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: kPrimaryColor,
              unselectedColor: Colors.grey,
              icon: const Icon(
                Icons.home,
                size: 20,
              ),
              title: const Text('Dashboard'),
            ),
            SalomonBottomBarItem(
              selectedColor: kPrimaryColor,
              unselectedColor: Colors.grey,
              icon: const Icon(
                Icons.person,
                size: 20,
              ),
              title: const Text('Investment'),
            ),
            SalomonBottomBarItem(
              selectedColor: kPrimaryColor,
              unselectedColor: Colors.grey,
              icon: const Icon(
                Icons.account_balance_wallet_rounded,
                size: 20,
              ),
              title: const Text('Wallet'),
            ),
          ],
        );
      },
    );
  }
}
