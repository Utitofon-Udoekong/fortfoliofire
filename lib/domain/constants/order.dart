import 'package:jiffy/jiffy.dart';

class OrderModel {
  final String title; 
  final String subtitle; 
  final bool tooltip; 
  String? tooltipText;

  
  OrderModel({
    required this.title,
    required this.subtitle,
    required this.tooltip,
    this.tooltipText
  });
}


List<OrderModel> order(String endDate){
    List<OrderModel> order = <OrderModel>[
      OrderModel(
          title: 'Investment date',
          subtitle: Jiffy(DateTime.now()).yMMMMd,
          tooltip: false),
      OrderModel(title: 'Interest Frequency', subtitle: 'monthly', tooltip: true, tooltipText: "Shows how often your interest will be available for harvest"),
      OrderModel(title: 'Redemption Date', subtitle: endDate, tooltip: true, tooltipText: "This is the date where your investment capital can be withdrawn alongside profits without penalty."),
    ];
  return order;
  }