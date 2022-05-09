
import 'package:dartz/dartz.dart';

abstract class IExternalFacade{
  Future<double> getCoinPrice ({required String id});
  Future<double> getBTCPriceInDollars();
  Future<Either<String,Map<String,dynamic>>> cancelCharge({required String id});
}