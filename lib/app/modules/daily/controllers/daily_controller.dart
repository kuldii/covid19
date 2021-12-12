import 'package:covid19/app/data/models/daily_model.dart';
import 'package:covid19/app/data/providers/daily_provider.dart';
import 'package:get/get.dart';

class DailyController extends GetxController {
  Future<List<Daily>?> getDataDaily() async {
    DailyProvider dailyProv = DailyProvider();

    List<Daily>? hasil = await dailyProv.getDataDaily();

    return hasil;
  }
}
