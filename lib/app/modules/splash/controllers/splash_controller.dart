import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:git_auth_benim/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final getStorge = GetStorage();
  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");

    if (getStorge.read("id") != null) {
      print("getStorge.read('id') != null - Get.offAllNamed(Routes.HOME)");

      Future.delayed(const Duration(milliseconds: 3000), () {
        Get.offAllNamed(Routes.HOME);
      });
      print("getStorge.read('id') != null ");
    } else {
      print("elseeee ");
      Future.delayed(const Duration(milliseconds: 3000), () {
        Get.offAllNamed(Routes.LOGIN);
      });
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
