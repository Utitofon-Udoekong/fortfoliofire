import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/user/news.dart';
import 'package:fortfolio/presentation/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:fortfolio/presentation/home/failure_view.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:url_launcher/link.dart';

class Dashboard extends StatelessWidget {
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
              BlocSelector<DashboardCubit, DashboardState, bool>(
                selector: (state) {
                  return state.loading;
                },
                builder: (context, loading) {
                  if (loading) {
                    return Center(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: const CircularProgressIndicator(),
                      ),
                    );
                  } else {
                    return BlocSelector<DashboardCubit, DashboardState, bool>(
                      selector: (state) {
                        return state.failure.isNotEmpty;
                      },
                      builder: (context, failure) {
                        if (failure) {
                          return FailureView(
                            onpressed: () =>
                                context.read<DashboardCubit>().initNews(),
                            message:
                                context.read<DashboardCubit>().state.failure,
                          );
                        } else {
                          return CarouselSlider(
                              items: generateSlider(
                                  context,
                                  context
                                      .read<DashboardCubit>()
                                      .state
                                      .newsList),
                              options: CarouselOptions(
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                              ));
                        }
                      },
                    );
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildSmallIcons(
                      'images/Swap.svg',
                      'Transactions',
                      () => context.router
                          .push(const DashboardTransactionsRoute())),
                  buildSmallIcons('images/Chart.svg', 'Invest Calculator',
                      () => context.router.push(const CalculatorRoute())),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Quick Actions',
                    style: TextStyle(
                        color: Color(0XFF212529),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.left,
                  ),
                  IconButton(
                    onPressed: () => context.read<DashboardCubit>().refresh(),
                    tooltip: "Refresh",
                    icon: const Icon(Icons.refresh_rounded),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildBigIcons(
                      'images/Activity-big.svg',
                      'Active Investments',
                      const Color(0XFF00ADEE),
                      'View your investment status, portfolio and transaction details.',
                      'Active Invests',
                      () => context.pushRoute(
                          const HomePageRoute(children: [WalletRoute()])),
                      context),
                  buildBigIcons(
                      'images/bolt.svg',
                      'Quick Investments',
                      const Color(0XFF00C566),
                      'Find available investment packages of interest and get started.',
                      'Quick Invest',
                      () => context.pushRoute(const HomePageRoute(
                          children: [InvestmentPageRoute()])),
                      context),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buildBigIcons(
                      'images/support.svg',
                      'Need Help? Get Support',
                      const Color(0XFF00ADEE),
                      'Contact our customer care service today for help.',
                      'Get help',
                      () => context.router.push(const SupportPageRoute()),
                      context),
                  buildBigIcons(
                      'images/Profile.svg',
                      'Access Your Profile',
                      const Color(0XFF00ADEE),
                      'See your transactions, settings & update your preferences.',
                      'Access Profile',
                      () => context.router.push(const ProfilePageRoute()),
                      context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  List<Widget> generateSlider(BuildContext context, List<NewsModel> list) {
    List<Widget> imageSlider = list
        .map((NewsModel item) {
          return Link(
            uri: Uri.parse(item.redirectLink ?? "#"),
            builder: (BuildContext context, Future<void> Function()? followLink) { 
                return GestureDetector(
                  onTap: followLink,
                  child: Container(
                              margin: const EdgeInsets.all(5),
                              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: CachedNetworkImage(
                    imageUrl: item.url,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    placeholder: (context, url) => Container(color: Colors.grey),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                  ),
                              ),
                            ),
                );
             }
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
              color: Color(0XFFF4FFFA),
              borderRadius: BorderRadius.all(Radius.circular(5)),
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

  Widget buildBigIcons(String icon, String title, color, String description,
      String hypertext, Function()? ontap, BuildContext context) {
    final Widget svg = SvgPicture.asset(
      icon,
      semanticsLabel: title,
    );
    return Container(
      padding: const EdgeInsets.all(13.0),
      width: MediaQuery.of(context).size.width / 2 - 25,
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
            style: subTitle.copyWith(
                color: color, fontSize: 15, fontWeight: FontWeight.w600),
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
