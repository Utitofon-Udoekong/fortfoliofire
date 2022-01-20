import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/controllers/homeController.dart';
import 'package:fortfolio/screens/home/investments/notifications/notifications.dart';
import 'package:fortfolio/screens/home/widgets/drawer.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      key: controller.scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        leading: InkWell(
          onTap: () {
            controller.openDrawer();
          },
          child: const Image(
            image: const AssetImage('images/nav.png'),
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
                onPressed: () => Get.to(const NotificationsPage()),
                icon: const Icon(
                  Icons.notifications,
                  size: 15,
                )),
          )
        ],
      ),
      drawer: const SafeArea(child: MainDrawer()),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: '●',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: '●',
            ),
            // Icons.article for id
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: '●',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: const Color(0XFFD8D8D8),
          onTap: controller.changePage,
        ),
      ),
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: '/dashboard',
        onGenerateRoute: controller.onGenerateRoute,
      ),
    );
  }
}
