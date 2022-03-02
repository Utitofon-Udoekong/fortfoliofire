import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
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
              Text('Investment Amount', style: subTitle.copyWith(fontSize: 13, color: kgreyColor),),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.attach_money)
                    ),
                  ),
                const SizedBox(
                height: 20,
              ),
              Text('Investment Duration', style: subTitle.copyWith(fontSize: 13, color: kgreyColor),),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF3F6F8),
                      border: InputBorder.none,
                      suffix: Text('Months', style: subTitle.copyWith(fontSize: 12, color: kgreyColor),)
                    ),
                  ),
                const SizedBox(
                height: 20,
              ),
              Text('Investment Plan', style: subTitle.copyWith(fontSize: 13, color: kgreyColor),),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.keyboard_arrow_down)
                    ),
                  ),
                const SizedBox(
                height: 20,
              ),
              Text('Return Rate', style: subTitle.copyWith(fontSize: 13, color: kgreyColor),),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none,
                    ),
                  ),
                const SizedBox(
                height: 20,
              ),
              Text('Result', style: titleText.copyWith(fontSize: 15),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  buildtile('Starting Amount', '\$20,000.00'),
                  const SizedBox(
                height: 7,
              ),
                  buildtile('Return Rate', '30%'),
                  const SizedBox(
                height: 7,
              ),
                  buildtile('Total Interest', '\$3,000.00'),
                ],
              )
              ]
            )
          )
        )
      )
    );
  }

  Widget buildtile (String title, String sub) {
    return Flex(direction: Axis.horizontal,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(title, style: subTitle.copyWith(fontSize: 13, color: kBlackColor),),
      Text(sub, style: subTitle.copyWith(fontSize: 13, color: kBlackColor, fontWeight: FontWeight.w500),),
    ],);
  }
}