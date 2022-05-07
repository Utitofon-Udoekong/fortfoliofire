import 'package:coinbase_commerce/coinbase_commerce.dart';
import 'package:dartz/dartz.dart';

abstract class IExternalFacade{
  Future<double> getCoinPrice ({required String id});
  Future<double> getBTCPriceInDollars();
  Future<Option<ChargeObject>> createCharge();
}