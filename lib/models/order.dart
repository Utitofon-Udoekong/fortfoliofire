class OrderModel {
  final String title; 
  final String subtitle; 

  
  OrderModel({
    required this.title,
    required this.subtitle,
  });
}

List<OrderModel> order = <OrderModel>[
  
  OrderModel(
    title: 'Investment date',
    subtitle: '2021-12-27'
  ),
  OrderModel(
    title: 'Value date',
    subtitle: '2021-12-27'
  ),
  OrderModel(
    title: 'Interest period',
    subtitle: '1 Day'
  ),
  OrderModel(
    title: 'Interest end date',
    subtitle: '2027'
  ),
];