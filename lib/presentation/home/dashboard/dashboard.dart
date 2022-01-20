import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fortfolio/models/dashboardmodels/news.dart';
import 'package:fortfolio/screens/home/dashboard/dashboard_controller.dart';
import 'package:fortfolio/screens/home/dashboard/screens/profile/profile.dart';
import 'package:fortfolio/screens/home/dashboard/screens/support/support.dart';
import 'package:fortfolio/screens/home/failure_view.dart';
import 'package:fortfolio/screens/home/investments/calculator/investment_calculator.dart';
import 'package:fortfolio/screens/home/investments/investment.dart';
import 'package:fortfolio/screens/home/investments/notifications/notifications.dart';
import 'package:fortfolio/screens/home/investments/transactions/transactions.dart';
import 'package:get/get.dart';

class Dashboard extends GetView<DashboardController> {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Obx(() {
              if (controller.isDataProcessing.value) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  child: const CircularProgressIndicator(),
                );
              } else {
                if (controller.isDataError.value) {
                  return FailureView(
                    onpressed: () => controller.getPopular(),
                  );
                } else {
                  return CarouselSlider(
                      items: generateSlider(),
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                      ));
                }
              }
            }),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildSmallIcons('images/Activity-small.svg', 'Investments', () => Get.to(const NotificationsPage())),
                buildSmallIcons('images/Swap.svg', 'Transactions', () => Get.to(const TransactionsPage())),
                buildSmallIcons('images/Chart.svg', 'Invest Calculator', () => Get.to(const InvestmentCalculator())),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Quick Actions', style: TextStyle(
              color: const Color(0XFF212529),
              fontSize: 15,
              fontWeight: FontWeight.w600
            ),
            textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildBigIcons('images/bolt.svg', 'Active Investments', const Color(0XFF00ADEE), 'See your current investments, invest more and get recommendations.', 'Active Invests', () => Get.to(const Investment())),
                buildBigIcons('images/Activity-big.svg', 'Quick Investments', const Color(0XFF00C566), 'Find invsestments that fit with your area of interest & get started!', 'Quick Invest', () => Get.to(const Investment())),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildBigIcons('images/support.svg', 'Need Help? Get Support', const Color(0XFF00ADEE), 'Contact our personnels available to help you with any thing on our app.', 'Get help', () => Get.to(const SupportPage())),
                buildBigIcons('images/Profile.svg', 'Access Your Profile', const Color(0XFF00ADEE), 'See your transactions, settings & update your preferences.', 'Access Profile', () => Get.to(const ProfilePage())),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  List<Widget> generateSlider() {
    List<Widget> imageSlider = controller.lstpopular
        .map((item) {
          return Container(
            margin: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(const Radius.circular(10)),
              child: CachedNetworkImage(
                imageUrl: item['image_thumbnail_path'],
                fit: BoxFit.cover,
                width: Get.width,
                placeholder: (context, url) => Container(color: Colors.grey),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                ),
              ),
            ),
          );
        })
        .cast<Widget>()
        .toList();
    return imageSlider;
  }

  Widget buildSmallIcons(String icon, String title, Function() ontap) {
    final Widget svg = SvgPicture.asset(
      icon,
      semanticsLabel: title,
    );
    return GestureDetector(
      onTap: ontap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: svg,
            decoration: const BoxDecoration(
              color: const Color(0XFFF4FFFA),
              borderRadius: const BorderRadius.all(const Radius.circular(5)),
            ),
            width: 40,
            height: 40,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 12, color: kgreyColor),
          )
        ],
      ),
    );
  }

  Widget buildBigIcons(
      String icon, String title, color, String description, String hypertext, Function()? ontap) {
    final Widget svg = SvgPicture.asset(
      icon,
      semanticsLabel: title,
    );
    return Container(
      padding: const EdgeInsets.all(13.0),
      width: Get.width / 2 - 25,
      decoration: BoxDecoration(
          color: title == 'Quick Investments'
              ? const Color(0XFFF5FFFA)
              : const Color(0XFFF1FBFF),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          svg,
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: subTitle.copyWith(color: color, fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: const TextStyle(
                fontSize: 12,
                color: Color(0XFF242424),
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: ontap,
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Text(
                    hypertext,
                    style: TextStyle(
                        fontSize: 12,
                        color: color,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 3.0,
                  ),
                  Icon(
                    Icons.double_arrow_sharp,
                    color: color,
                    size: 10,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
// Obx(() => CarouselSlider(
//               options: CarouselOptions(height: 400.0),
//               items: news.map((i) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: EdgeInsets.symmetric(horizontal: 5.0),
//                       decoration: BoxDecoration(color: Colors.amber),
//                       child: Row(
//                         children: <Widget>[
//                           Column(
//                             children: [
//                               Text(i.title, style: titleText.copyWith(color: Colors.white),),
//                               Text(i.description, style: subTitle,)
//                             ],
//                           ),
//                           Image(image: AssetImage(i.imageAsset))
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               }).toList(),
//             ))
