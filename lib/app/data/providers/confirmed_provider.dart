import 'package:get/get.dart';

import '../models/confirmed_model.dart';

class ConfirmedProvider extends GetConnect {
  Future<List<Confirmed>?> getDataConfirmed() async {
    final response = await get('https://covid19.mathdro.id/api/confirmed');
    List listConfirmed = response.body;
    return Confirmed.fromListJson(listConfirmed);
  }
}
