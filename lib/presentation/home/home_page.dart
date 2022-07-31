import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_badge.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/notifications/cubit/notification_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../application/auth/auth_cubit.dart';
import 'drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    final bool isAccountActive = context
        .select((AuthCubit authCubit) => authCubit.state.userModel.isAccountActive);
    final int buyPrice = context.select(
        (AuthCubit authCubit) =>
            authCubit.state.buyPrice);
    final int sellPrice= context.select(
        (AuthCubit authCubit) =>
            authCubit.state.sellPrice);
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Text("We buy / We sell", style: subTitle.copyWith(fontSize: 12, color: kgreyColor, fontWeight: FontWeight.bold)),
              Text.rich(TextSpan(
                children: [
                  TextSpan(text: "$buyPrice", style: subTitle.copyWith(fontSize: 16, color: kGreenColor, fontWeight: FontWeight.bold)),
                  TextSpan(text: " / ", style: subTitle.copyWith(fontSize: 16, color: kgreyColor, fontWeight: FontWeight.bold)),
                  TextSpan(text: "$sellPrice", style: subTitle.copyWith(fontSize: 16, color: kRedColor, fontWeight: FontWeight.bold)),
                ]
              ), style: subTitle.copyWith(fontSize: 12, color: kgreyColor))
            ]),
            const SizedBox(width:20),
            Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: const BoxDecoration(
                color: Color(0XFFF5F7FA),
                shape: BoxShape.circle,
              ),
              width: 30,
              alignment: Alignment.center,
              height: 30,
              child: BlocBuilder<NotificationCubit, NotificationState>(
                buildWhen: (previous, current) => previous.notificationCount != current.notificationCount,
                builder: (context, state) {
                  if (state.notificationExists) {
                    return CustomBadge(
                      top: 1,
                      right: 1,
                      value: state.notificationCount.toString(),
                      child: IconButton(
                          onPressed: () {
                            if(isAccountActive) {
                              context.router.push(const NotificationsPageRoute());
                              context.read<NotificationCubit>().reset();
                            }else {
                              null;
                            }
                          },
                          icon: const Icon(
                            Icons.notifications,
                            size: 15,
                          )),
                    );
                  } else {
                    return IconButton(
                        onPressed: () => isAccountActive ?
                            context.router.push(const NotificationsPageRoute()) : null,
                        icon: const Icon(
                          Icons.notifications,
                          size: 15,
                        ));
                  }
                },
              ),
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
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
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
                Icons.stacked_bar_chart_rounded,
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
