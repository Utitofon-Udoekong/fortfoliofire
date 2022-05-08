import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/charge_Object.dart';

abstract class IFunctionsFacade{
  Future<Either<String,ChargeObject>> createCharge({required String amount});
}