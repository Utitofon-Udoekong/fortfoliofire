import 'package:auto_route/auto_route.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class PlanModel {
  final String icon; 
  final String title; 
  final String minPrice; 
  final String roi; 
  final String currency; 
  final PageRouteInfo<dynamic> onPressed;

  
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
    onPressed: const FortDollarRoute(),
  ),
  PlanModel(
    icon: 'fortshield',
    title: 'FortShield',
    minPrice: 'N1,000,000',
    roi: '18%',
    currency: 'Naira, USD or Crypto (USDC/BUSD or USDT only).',
    onPressed: const FortShieldRoute(),
  ),
  PlanModel(
    icon: 'fortcrypto',
    title: 'FortCrypto',
    minPrice: '\$1,000',
    roi: '15%',
    currency: 'Cryptocurrency (BTC,ETH/USDT and more).',
    onPressed: const FortCryptoRoute(),
  ),
];