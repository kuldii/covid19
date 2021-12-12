import 'package:get/get.dart';

import '../controllers/death_controller.dart';

class DeathBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeathController>(
      () => DeathController(),
    );
  }
}
