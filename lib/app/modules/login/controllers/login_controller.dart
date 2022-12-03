import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:git_auth_benim/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final getStorge = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  login() {
    getStorge.write("id", 1);
    getStorge.write("name", "Ripples Code");
    Get.offAllNamed(Routes.HOME);
  }
}
