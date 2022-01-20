import 'package:get/get.dart';

// import '../popularmodel_model.dart';

class PopularmodelProvider extends GetConnect {

  Future<List<dynamic>> getPopular() async {
    try {
      final response = await get("https://www.episodate.com/api/most-popular?page=1");
      if(response.status.hasError){
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
