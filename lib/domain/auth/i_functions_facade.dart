import 'package:coinbase_commerce/coinbase_commerce.dart';
import 'package:dartz/dartz.dart';

abstract class IFunctionsFacade{
  Future<Either<String,ChargeObject>> createCharge({required String amount});
}