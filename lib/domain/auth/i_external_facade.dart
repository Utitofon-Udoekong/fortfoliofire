import 'package:coinbase_commerce/coinbase_commerce.dart';
import 'package:dartz/dartz.dart';

abstract class IExternalFacade{
  Future<Option<double>> getCoinPrice ({required String id});
  Future<Option<ChargeObject>> createCharge();
}