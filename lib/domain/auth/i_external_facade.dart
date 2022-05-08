import 'package:fortfolio/domain/widgets/coinbase_commerce/charge_Object.dart';
import 'package:dartz/dartz.dart';

abstract class IExternalFacade{
  Future<double> getCoinPrice ({required String id});
  Future<double> getBTCPriceInDollars();
  Future<Option<ChargeObject>> createCharge();
}