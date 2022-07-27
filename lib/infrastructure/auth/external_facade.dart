import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/charge_Object.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IExternalFacade)
class ExternalFacade implements IExternalFacade {
  @override
  Future<double> getCoinPrice({ required String id}) async {
    try {
      var url = Uri.parse("https://api.coingecko.com/api/v3/coins/$id");
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      var value = json['market_data']['current_price']['usd'].toString();
      return double.parse(value);
    } catch (e) {
      log(e.toString());
      return 0.0;
    }
  }
  @override
  Future<double> getBTCPriceInDollars() async {
    try {
      var url = Uri.parse("https://api.coingecko.com/api/v3/coins/bitcoin");
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      var value = json['market_data']['current_price']['usd'].toString();
      return double.parse(value);
    } catch (e) {
      log(e.toString());
      return 0.0;
    }
  }

  @override
  Future<void> cancelCharge({required String id}) async{
    var url = Uri.parse("https://api.commerce.coinbase.com/charges/$id/cancel");
    try {
      await http.post(url);
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<Either<String,ChargeObject>> getChargeEvent ({required String id}) async {
    var url = Uri.parse("https://api.commerce.coinbase.com/events/$id");
    ChargeObject charge = ChargeObject.empty();
    try {
      final response = await http.get(url);
      final json = jsonDecode(response.body);
      if(response.statusCode == 200){
        charge = ChargeObject.fromJson(json);
      }
      return right(charge);
    } on HttpException catch (e) {
      return left(e.message);
    }
  }

}
