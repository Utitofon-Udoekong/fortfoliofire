import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart';

// import '../popularmodel_model.dart';

class PopularmodelProvider {
  Future<List<dynamic>> getPopular() async {
    var cient = HttpClient();
    try {
      HttpClientRequest response = await cient.get('host', 3000, "path");
      if(response.bufferOutput){
        return Future.error(response.status);
      }else {
        return response.body['tv_shows'];
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }  
  
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Popularmodel.fromJson(map);
  //     if (map is List)
  //       return map.map((item) => Popularmodel.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  // Future<Popularmodel?> getPopularmodel(int id) async {
  //   final response = await get('popularmodel/$id');
  //   return response.body;
  // }

  // Future<Response<Popularmodel>> postPopularmodel(
  //         Popularmodel popularmodel) async =>
  //     await post('popularmodel', popularmodel);
  // Future<Response> deletePopularmodel(int id) async =>
  //     await delete('popularmodel/$id');
}
