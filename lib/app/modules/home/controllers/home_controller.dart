import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:git_auth_benim/app/routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final getStorge = GetStorage();
  var name = "";
  @override
  void onInit() {
    super.onInit();
    name = getStorge.read("name");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  logout() {
    getStorge.erase();
    Get.offAllNamed(Routes.LOGIN);
  }
}
