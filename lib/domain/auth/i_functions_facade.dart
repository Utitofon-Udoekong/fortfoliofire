import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/status_Object.dart';

abstract class IFunctionsFacade{
  Future<Either<String,Map<String,dynamic>>> createCharge({required String amount});
  Stream<Option<StatusObject>> checkChargeStatus();
}