import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_expansion_panel.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  "Frequently Asked\nQuestions",
                  style: titleText,
                ),
                const SizedBox(
                  height: 40,
                ),
                _buildPanel(),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return CustomExpansionPanelList.radio(
      elevation: 0,
      expandedHeaderPadding: const EdgeInsets.only(bottom: 10),
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          item[index].isExpanded = !isExpanded;
          _customTileExpanded = isExpanded;
        });
      },
      children: item.map<CustomExpansionPanelRadio>((Item item) {
        return CustomExpansionPanelRadio(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return SizedBox(
              child: Text(
                item.question,
                style: subTitle.copyWith(
                    fontSize: 16, color: const Color(0XFF535454)),
              ),
            );
          },
          body: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: const Color(0XFFF8F8F8),
                borderRadius: BorderRadius.circular(6.0)),
            child: Text(
              item.answer,
              style: subTitle.copyWith(
                  fontSize: 14, color: const Color(0XFF535454)),
            ),
          ),
          value: item.question,
        );
      }).toList(),
    );
  }
}

class Item {
  Item({
    required this.answer,
    required this.question,
    this.isExpanded = false,
  });

  String answer;
  String question;
  bool isExpanded;
}

List<Item> item = <Item>[
  Item(
      question: 'Is the company regulated?',
      answer: 'We are registered under CAC RC:1742448'),
  Item(
      question: 'Do you give loans?',
      answer:
          'No we don\'t give loans but we give our investors a free asset finance'),
  Item(
      question: 'How does the company generate its profit?',
      answer:
          'Fortfolio generate their income from the businesses that we do which are; cryptocurrency trading, car windshield, e-commerce, POS services, real estate, social media management and Shortlets'),
  Item(
      question: 'Do you have a Physical Office?',
      answer: 'Yes, Suite 269 Road 5 Ikota shopping complex lagos'),
  Item(question: 'What is the Minimum investment tenure?', answer: '6 months'),
  Item(
      question: 'What is the minimum amount to invest?',
      answer: 'The minimum investment is 50,000 naira'),
];