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
      OrderModel(title: 'Value date(Time-lock End)', subtitle: endDate, tooltip: true, tooltipText: "Investment lock period ends. User can withdraw at anytime from now."),
    ];
  return order;
  }