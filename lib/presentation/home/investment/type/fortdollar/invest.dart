import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/order.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/labelled_checkbox.dart';
import 'package:timelines/timelines.dart';

const kTileHeight = 40.0;

class FortDollarInvestment extends StatefulWidget {
  const FortDollarInvestment({Key? key}) : super(key: key);

  @override
  _FortDollarInvestmentState createState() => _FortDollarInvestmentState();
}

class _FortDollarInvestmentState extends State<FortDollarInvestment> {
  List<bool> isSelected = [false, true, false];
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
                  "Invest",
                  style: titleText.copyWith(color: kBlackColor),
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    const Image(image: AssetImage('images/fortdollar.png')),
                    Text.rich(
                      TextSpan(
                          text: 'up to',
                          children: <TextSpan>[
                            TextSpan(
                                text: '30% returns',
                                style: subTitle.copyWith(
                                    color: kGreenColor, fontSize: 13))
                          ],
                          style: subTitle.copyWith(
                              fontSize: 13, color: kBlackColor)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "FortDollar",
                  style: titleText.copyWith(color: kBlackColor, fontSize: 15),
                ),
                Text(
                  "How much are you starting with?",
                  style:
                      subTitle.copyWith(color: const Color(0xFF656565), fontSize: 13),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Duration",
                  style:
                      subTitle.copyWith(color: const Color(0xFF656565), fontSize: 13),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildToggle(),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Summary",
                  style:
                      subTitle.copyWith(color: const Color(0xFF656565), fontSize: 13),
                ),
                const SizedBox(
                  height: 10,
                ),
                FixedTimeline.tileBuilder(
                  theme: TimelineThemeData(
                      nodePosition: 0,
                      color: const Color(0xffc2c5c9),
                      connectorTheme: const ConnectorThemeData(
                        thickness: 3.0,
                      ),
                      indicatorTheme: const IndicatorThemeData(
                          position: 0, color: kPrimaryColor)),
                  builder: TimelineTileBuilder.connected(
                      itemCount: order.length,
                      indicatorBuilder: (context, index) {
                        return const DotIndicator(
                          color: kPrimaryColor,
                        );
                      },
                      connectorBuilder: (_, index, connectorType) {
                        return const DashedLineConnector(
                          color: kPrimaryColor,
                          thickness: 1.0,
                        );
                      },
                      itemExtentBuilder: (_, __) {
                        return kTileHeight;
                      },
                      contentsBuilder: (_, index) {
                        return timelineContent(
                            order[index].title, order[index].subtitle);
                      }),
                ),
                const SizedBox(
                  height: 40,
                ),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Est. APY',
                      style:
                          subTitle.copyWith(fontSize: 14, color: kBlackColor),
                    ),
                    Text(
                      '35.5% ',
                      style:
                          subTitle.copyWith(fontSize: 14, color: kGreenColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                LabeledCheckbox(label: 'I have read and I agree to Fortfolio Terms of Services Agreemet', value: false, onChanged: (bool)=>{}),
                const SizedBox(
                  height: 20,
                ),
                CustomFilledButton(text: 'INVEST NOW', onTap: (){
                  // Get.to(SelectInvestmentMethod());
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildToggle() {
    return ToggleButtons(
      selectedColor: Colors.white,
      color: kgreyColor,
      isSelected: isSelected,
      fillColor: const Color.fromRGBO(243, 246, 248, 0.6),
      renderBorder: false,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: kPrimaryColor
          ),
              margin: const EdgeInsets.only(right: 30),
          child: const Text(
            '3 months',
            style: const TextStyle(fontSize: 13),
          ),
          alignment: Alignment.center,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: kPrimaryColor),
              margin: const EdgeInsets.only(right: 30),
          child: const Text(
            '6 months',
            style: const TextStyle(fontSize: 13),
          ),
          alignment: Alignment.center,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: kPrimaryColor),
          child: const Text(
            '12 months',
            style: const TextStyle(fontSize: 13),
          ),
          alignment: Alignment.center,
        ),
      ],
      onPressed: (int newIndex) {
        setState(() {
          for (int index = 0; index < isSelected.length; index++) {
            if (index == newIndex) {
              isSelected[index] = true;
            } else {
              isSelected[index] = false;
            }
          }
        });
      },
    );
  }

  Widget timelineContent(String title, String subtitle) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title, style: subTitle.copyWith(fontSize: 13, color: kBlackColor)),
        Text(
          subtitle,
          style: subTitle.copyWith(fontSize: 13, color: kBlackColor),
        )
      ],
    );
  }
}
