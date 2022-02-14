class PlanModel {
  final String icon; 
  final String title; 
  final String minPrice; 
  final String roi; 
  final String currency; 
  final Function() onPressed;

  
  PlanModel({
    required this.icon,
    required this.title,
    required this.minPrice,
    required this.roi,
    required this.currency,
    required this.onPressed
  });
}

List<PlanModel> plans = <PlanModel>[
  
  PlanModel(
    icon: 'fortdollar',
    title: 'FortDollar',
    minPrice: '\$1,000',
    roi: '30%',
    currency: 'Naira or USD',
    onPressed: () => null,
  ),
  PlanModel(
    icon: 'fortshield',
    title: 'FortShield',
    minPrice: 'N1,000,000',
    roi: '18%',
    currency: 'Naira, USD or Crypto (USDC/BUSD or USDT only).',
    onPressed: () => null,
  ),
  PlanModel(
    icon: 'fortcrypto',
    title: 'FortCrypto',
    minPrice: '\$1,000',
    roi: '15%',
    currency: 'Cryptocurrency (BTC,ETH/USDT and more).',
    onPressed: () => null,
  ),
];