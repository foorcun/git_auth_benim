import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SplashController>(() {
    //   print('SplashBinding');
    //   return SplashController();
    // });
    Get.put<SplashController>(
      SplashController(),
    );
  }
}
