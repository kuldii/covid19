import 'package:covid19/app/data/models/confirmed_model.dart';
import 'package:covid19/app/data/providers/confirmed_provider.dart';

void main() async {
  ConfirmedProvider confirmProv = ConfirmedProvider();

  List<Confirmed>? hasil = await confirmProv.getDataConfirmed();

  if (hasil == null) {
    print("TIDAK ADA DATA COVID TERKONFIRMASI");
  } else {
    hasil.forEach((element) {
      if (element.provinceState == "") {
        print("WILAYAH : ${element.countryRegion}");
      } else {
        print("WILAYAH : ${element.countryRegion} - ${element.provinceState}");
      }
      print("TOTAL TERKONFIRMASI : ${element.confirmed}\n");
    });
  }
}
