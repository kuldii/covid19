import 'package:get/get.dart';

import '../models/death_model.dart';

class DeathProvider extends GetConnect {
  Future<List<Death>?> getDataDeath() async {
    final response = await get('https://covid19.mathdro.id/api/deaths');
    List listDeath = response.body;
    return Death.fromListJson(listDeath);
  }
}
