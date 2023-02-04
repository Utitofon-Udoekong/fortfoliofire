

import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/charge_Object.dart';

abstract class IExternalFacade{
  Future<double> getCoinAPriceInCoinB({required String coinA, required String coinB});
  Future<double> getCoinPriceInDollars({required String id});
  Future<double> getCoinPriceInNaira({required String id});
  Future<double> getCoinPriceInBTC ({required String id});
  Future<double> getBTCPriceInDollars();
  Future<void> cancelCharge({required String id});
  Future<Either<String,ChargeObject>> getChargeEvent ({required String id});
}