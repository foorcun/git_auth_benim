import 'package:get/get.dart';

import '../controllers/home_for_fireuser_controller.dart';

class HomeForFireuserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeForFireuserController>(
      () => HomeForFireuserController(),
    );
  }
}
