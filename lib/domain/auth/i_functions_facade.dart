import 'package:dartz/dartz.dart';

abstract class IFunctionsFacade{
  Future<Either<String,Map<String,dynamic>>> createCharge({required String amount});
}