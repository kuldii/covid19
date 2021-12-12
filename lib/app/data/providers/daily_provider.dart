import 'package:get/get.dart';

import '../models/daily_model.dart';

class DailyProvider extends GetConnect {
  Future<List<Daily>?> getDataDaily() async {
    final response = await get('https://covid19.mathdro.id/api/daily');
    List listDaily = response.body;
    return Daily.fromListJson(listDaily);
  }
}
