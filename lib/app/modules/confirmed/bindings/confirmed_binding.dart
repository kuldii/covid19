import 'package:get/get.dart';

import '../controllers/confirmed_controller.dart';

class ConfirmedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmedController>(
      () => ConfirmedController(),
    );
  }
}
