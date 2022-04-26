import 'dart:developer';

import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkService {
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
}