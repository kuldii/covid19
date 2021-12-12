import 'package:covid19/app/data/models/summary_model.dart';
import 'package:covid19/app/data/providers/summary_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Future<Summary?> getSummary() async {
    SummaryProvider summaryProv = SummaryProvider();

    Summary? hasil = await summaryProv.getSummary();

    return hasil;
  }
}
