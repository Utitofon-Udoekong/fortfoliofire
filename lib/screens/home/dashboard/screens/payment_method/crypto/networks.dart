class NetworkModel {
  final String title;
  final int index;

  NetworkModel(
      {required this.title, required this.index});
}

List<NetworkModel> network = <NetworkModel>[
  NetworkModel(
      title: "Ethereum (ERC20)",
      index: 1),
  NetworkModel(
      title: "Binance Chain (BEP2)",
      index: 2),
  NetworkModel(
      title: "Binance Smart Chain (BEP20)",
      index: 3),
  NetworkModel(
      title: "Tron (TRC20)",
      index: 4),
  
];
