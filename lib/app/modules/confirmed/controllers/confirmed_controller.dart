import 'package:covid19/app/data/models/confirmed_model.dart';
import 'package:covid19/app/data/providers/confirmed_provider.dart';
import 'package:get/get.dart';

class ConfirmedController extends GetxController {
  Future<List<Confirmed>?> getDataConfirmed() async {
    ConfirmedProvider confirmProv = ConfirmedProvider();

    List<Confirmed>? hasil = await confirmProv.getDataConfirmed();

    return hasil;
  }
}
