import 'package:cloud_functions/cloud_functions.dart';
import 'package:coinbase_commerce/coinbase_commerce.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_functions_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFunctionsFacade)

class FirebaseFunctionsFacade implements IFunctionsFacade{
  final FirebaseFunctions functions;

  FirebaseFunctionsFacade(this.functions);

  @override
  Future<Either<String, ChargeObject>> createCharge() async {
    try {
      final createCharge = await functions.httpsCallable("createCharge").call();
      return right(createCharge.data);
    } on FirebaseFunctionsException catch (error) {
      return left(error.message!);
    }

  }

}



