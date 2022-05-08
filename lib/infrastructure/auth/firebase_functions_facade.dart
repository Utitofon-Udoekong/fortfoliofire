import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/charge_Object.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_functions_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IFunctionsFacade)
class FirebaseFunctionsFacade implements IFunctionsFacade {
  final FirebaseFunctions functions;

  FirebaseFunctionsFacade(this.functions);

  @override
  Future<Either<String, Map<String,dynamic>>> createCharge(
      {required String amount}) async {
    try {
      Map<String,dynamic> charge = {};
      final url = Uri.https('us-central1-fortfolio-app.cloudfunctions.net', '/createCharge', {'amount': amount});
      final response = await http.get(
        url,
        headers: {"Content-Type": "application/json; charset=UTF-8"},
      );
      if (response.statusCode == 200) {
        charge = jsonDecode(response.body);
      } else {
        throw Exception('Failed to create charge.');
      }
      return right(charge);
    } on FirebaseFunctionsException catch (error) {
      return left(error.message!);
    }
  }
}
