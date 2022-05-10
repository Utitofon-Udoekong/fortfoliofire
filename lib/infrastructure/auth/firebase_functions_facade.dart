import 'dart:async';
import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:fortfolio/domain/auth/i_functions_facade.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/charge_Object.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/enums.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/status_Checks.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/status_Object.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IFunctionsFacade)
class FirebaseFunctionsFacade implements IFunctionsFacade {
  final FirebaseFunctions functions;
  final IExternalFacade externalFacade;

  FirebaseFunctionsFacade(this.functions, this.externalFacade);

  @override
  Future<Either<String, Map<String, dynamic>>> createCharge(
      {required String amount}) async {
    try {
      Map<String, dynamic> charge = {};
      final url = Uri.https('us-central1-fortfolio-app.cloudfunctions.net',
          '/createCharge', {'amount': amount});
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

  @override
  Stream<Option<TransactionStatus?>> checkChargeStatus() async* {
    final StreamController<Option<TransactionStatus?>> streamController =
        StreamController<Option<TransactionStatus?>>();
    final url = Uri.https(
      'us-central1-fortfolio-app.cloudfunctions.net',
      '/webhookHandler',
    );
    final response = await http.get(
      url,
      headers: {"Content-Type": "application/json; charset=UTF-8"},
    );
    if (response.statusCode == 200) {
      ChargeObject chargeObject = ChargeObject.empty();
      final eventId = jsonDecode(response.body);
      final chargeObjectOption =
          await externalFacade.getChargeEvent(id: eventId);
      chargeObjectOption.fold((l) => null, (r) => chargeObject = r);
      StatusObject status = StatusCheck.checkChargeStatus(chargeObject);
      streamController.add(some(status.status));
    } else {
      streamController.add(none());
    }
    yield* streamController.stream;
  }
}
