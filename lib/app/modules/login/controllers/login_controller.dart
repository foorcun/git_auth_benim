import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:git_auth_benim/app/routes/app_pages.dart';
import 'package:git_auth_benim/core/service/google_sign_in_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final getStorge = GetStorage();

  @override
  void onInit() {
    super.onInit();

    login();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // login() {
  login() async {
    await Get.find<GoogleSignInService>().login();
    // Get.offAllNamed(Routes.HOME);

    var _user = Get.find<GoogleSignInService>().getUser();

    //
    // getStorge.write("id", 1);
    getStorge.write("id", _user!.id);
    // getStorge.write("name", "Ripples Code");
    getStorge.write("name", _user.displayName);
    getStorge.write("photourl", _user.photoUrl);
    getStorge.write("email", _user.email);

    // Get.offAllNamed(Routes.HOME);
    // Get.offAllNamed(Routes.HOME_FOR_FIREUSER);
  }
}
