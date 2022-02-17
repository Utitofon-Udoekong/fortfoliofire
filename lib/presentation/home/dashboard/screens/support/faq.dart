import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  final bool _customTileExpanded = false;
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
                buildTile(),
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

  Widget buildTile() {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0XFFF3F6F8), borderRadius: BorderRadius.circular(6.0)),
          margin: const EdgeInsets.only(bottom: 15.0),
      child: ExpansionPanelList(
        elevation: 0.0,
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            items[index].isExpanded = !isExpanded;
          });
        },
        children: items.map<ExpansionPanel>((ItemModel item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ExpansionTile(
                title: Text(
                  item.question,
                  style: subTitle.copyWith(
                      color: kBlackColor, fontWeight: FontWeight.w500),
                ),
              );
            },
            body: Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: const Color(0XFFF8F8F8),
                  borderRadius: BorderRadius.circular(6.0)),
              child: Text(
                item.answer,
                style:
                    subTitle.copyWith(fontSize: 14, color: const Color(0XFF535454)),
              ),
            ),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
      // child: ExpansionTile(
      //   title: Text(question, style: subTitle.copyWith(color: kBlackColor, fontWeight: FontWeight.w500),),
      // children: <Widget>[
      // Container(
      //   padding: EdgeInsets.all(10.0),
      //   decoration: BoxDecoration(
      //     color: Color(0XFFF8F8F8),
      //     borderRadius: BorderRadius.circular(6.0)
      //   ),
      //   child: Text(answer, style: subTitle.copyWith(fontSize: 14, color: Color(0XFF535454)),),
      // )
      //   ],
      //   trailing: Icon(
      //     _customTileExpanded ? Icons.remove : Icons.add,
      //     color: kBlackColor,
      //     size: 15,
      //   ),
      //   onExpansionChanged: (bool expanded) {
      //     setState(() => _customTileExpanded = expanded);
      //   },
      // ),
    );
  }
}

class ItemModel {
  ItemModel({
    required this.answer,
    required this.question,
    this.isExpanded = false,
  });

  String answer;
  String question;
  bool isExpanded;
}

List<ItemModel> items = <ItemModel>[
  ItemModel(
      question: 'Is the company regulated?',
      answer: 'We are registered under CAC RC:1742448'),
  ItemModel(
      question: 'Do you give loans?',
      answer:
          'No we don\'t give loans but we give our investors a free asset finance'),
  ItemModel(
      question: 'How does the company generate its profit?',
      answer:
          'Fortfolio generate their income from the businesses that we do which are; cryptocurrency trading, car windshield, e-commerce, POS services, real estate, social media management and Shortlets'),
  ItemModel(
      question: 'Do you have a Physical Office?',
      answer: 'Yes, Suite 269 Road 5 Ikota shopping complex lagos'),
  ItemModel(
      question: 'What is the Minimum investment tenure?', answer: '6 months'),
  ItemModel(
      question: 'What is the minimum amount to invest?',
      answer: 'The minimum investment is 50,000 naira'),
];
