import 'package:covid19/app/data/models/death_model.dart';
import 'package:covid19/app/data/providers/death_provider.dart';
import 'package:get/get.dart';

class DeathController extends GetxController {
  Future<List<Death>?> getDataDeath() async {
    DeathProvider deathsProv = DeathProvider();

    List<Death>? hasil = await deathsProv.getDataDeath();

    return hasil;
  }
}
