import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/enums.dart';

abstract class IFunctionsFacade{
  Future<Either<String,Map<String,dynamic>>> createCharge({required String amount});
  Stream<Option<TransactionStatus?>> checkChargeStatus();
}