import 'package:get/get.dart';

import '../models/summary_model.dart';

class SummaryProvider extends GetConnect {
  Future<Summary?> getSummary() async {
    final response = await get('https://covid19.mathdro.id/api/');
    if (response.statusCode != 200) return null;
    return Summary.fromJson(response.body);
  }
}
