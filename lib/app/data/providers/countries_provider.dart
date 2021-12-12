import 'package:get/get.dart';

import '../models/countries_model.dart';

class CountriesProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Countries.fromJson(map);
      if (map is List)
        return map.map((item) => Countries.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Countries?> getCountries(int id) async {
    final response = await get('countries/$id');
    return response.body;
  }

  Future<Response<Countries>> postCountries(Countries countries) async =>
      await post('countries', countries);
  Future<Response> deleteCountries(int id) async =>
      await delete('countries/$id');
}
