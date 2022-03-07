import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String selectedValue = "FortDollar";
  TextEditingController investmentAmount = TextEditingController();
  TextEditingController investmentDuration = TextEditingController();
  double _currentSliderValue = 3;
  @override
  Widget build(BuildContext context) {
    final int roi = selectedValue == "FortDollar" ? 30 : selectedValue == "FortShield" ? 18 : 15;
    final int investment = int.parse(investmentAmount.text);
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Padding(
                    padding: kDefaultPadding,
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
                            "Investment Calaculator",
                            style: titleText.copyWith(color: kBlackColor),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Investment Amount',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            controller: investmentAmount,
                            autocorrect: false,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFF3F6F8),
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.attach_money)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Investment Duration',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Slider.adaptive(
                            value: _currentSliderValue,
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                            min: 3,
                            max: 12,
                            divisions: 3,
                            label: _currentSliderValue.round().toString()
                          ),
                          TextFormField(
                            controller: investmentDuration,
                            autocorrect: false,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFFF3F6F8),
                                border: InputBorder.none,
                                suffix: Text(
                                  'Months',
                                  style: subTitle.copyWith(
                                      fontSize: 12, color: kgreyColor),
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Investment Plan',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          DropdownButtonFormField(
                            items: dropdownItems,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            value: selectedValue,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFF3F6F8),
                              border: InputBorder.none,
                            ),
                            icon: const Icon(Icons.keyboard_arrow_down),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Return Rate',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '15 %',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          TextFormField(
                            autocorrect: false,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFF3F6F8),
                              border: InputBorder.none,
                              prefix: Text(roi.toString()),
                              suffixIcon: const Icon(Icons.percent)
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Result',
                            style: titleText.copyWith(fontSize: 15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              buildtile('Starting Amount',
                                  '\$${investmentAmount.text}'),
                              const SizedBox(
                                height: 7,
                              ),
                              buildtile('Return Rate', '30%'),
                              const SizedBox(
                                height: 7,
                              ),
                              buildtile(
                                  'Total Interest', '\$${investment * roi}'),
                            ],
                          )
                        ])))));
  }

  Widget buildtile(String title, String sub) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: subTitle.copyWith(fontSize: 13, color: kBlackColor),
        ),
        Text(
          sub,
          style: subTitle.copyWith(
              fontSize: 13, color: kBlackColor, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("FortDollar"), value: "FortDollar"),
      const DropdownMenuItem(child: Text("FortCrypto"), value: "FortCrypto"),
      const DropdownMenuItem(child: Text("FortShield"), value: "FortShield"),
    ];
    return menuItems;
  }
}
