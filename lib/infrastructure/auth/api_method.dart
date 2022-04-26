import 'dart:developer';

import 'package:coinbase_commerce/coinbase_commerce.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkService {
  Coinbase coinbase = Coinbase("1c8e5033-7c3d-4e3f-be76-f816ed0049e2");
  Future<double> getPrice(String id) async {
    try {
      var url = Uri.parse("https://api.coingecko.com/api/v3/coins" + id);
      var response = await http.get(url);
      var json = jsonDecode(response.body);
      var value = json['market_data']['current_price']['usd'].toString();
      return double.parse(value);
    } catch (e) {
      log(e.toString());
      return 0.0;
    }
  }
   Future<ChargeObject> createCharge() async {
      ChargeObject charge = await coinbase.createCharge(
          description: "Investment",
          name: "Fort Crypto",
          pricingType: PricingType.noPrice);
      return charge;
    }
}
