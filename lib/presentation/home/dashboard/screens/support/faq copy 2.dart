import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/support/faq%20copy.dart';

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

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList.radio(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          item[index].isExpanded = !isExpanded;
        });
      },
      children: item.map<ExpansionPanelRadio>((Item item) {
        return ExpansionPanelRadio(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ExpansionTile(
              title: Text(
                item.question,
                style: subTitle.copyWith(
                    fontSize: 14, color: const Color(0XFF535454)),
              ),
              trailing: item.isExpanded ? const Icon(Icons.add) : const Icon(Icons.minimize),
            );
            // return Container(
            //   padding: const EdgeInsets.all(10.0),
            //   margin: const EdgeInsets.only(top: 10),
            //   decoration: BoxDecoration(
            //       color: const Color(0XFFF8F8F8),
            //       borderRadius: BorderRadius.circular(6.0)),
            // child: Text(
            //   item.question,
            //   style: subTitle.copyWith(
            //       fontSize: 14, color: const Color(0XFF535454)),
            // ),
            // );
          },
          body: Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: const Color(0XFFF8F8F8),
                borderRadius: BorderRadius.circular(6.0)),
            child: Text(
              item.answer,
              style: subTitle.copyWith(
                  fontSize: 14, color: const Color(0XFF535454)),
            ),
          ),
          value: item.isExpanded,
        );
      }).toList(),
    );
  }
}
