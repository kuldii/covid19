import 'package:get/get.dart';

import '../controllers/detail_daily_controller.dart';

class DetailDailyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailDailyController>(
      () => DetailDailyController(),
    );
  }
}
