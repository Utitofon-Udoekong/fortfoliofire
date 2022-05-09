import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:injectable/injectable.dart';

@LazySingleton(as: IExternalFacade)
class ExternalFacade implements IExternalFacade {
  @override
  Future<double> getCoinPrice({ required String id}) async {
    try {
      var url = Uri.parse("https://api.coingecko.com/api/v3/coins/" + id);
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
  Future<Either<String, Map<String, dynamic>>> cancelCharge({required String id}) async{
    Map<String,dynamic> charge = {};
    var url = Uri.parse("https://api.commerce.coinbase.com/charges/$id/cancel");
    try {
      var response = await http.post(url);
    if (response.statusCode == 200) {
        charge = jsonDecode(response.body);
      } else {
        throw Exception('Failed to create charge.');
      }
    return right(charge);
    } catch (e) {
      return left(e.toString());
    }
  }

}
