import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:git_auth_benim/app/routes/app_pages.dart';
import 'package:git_auth_benim/core/service/google_sign_in_service.dart';
import 'package:git_auth_benim/firebase_options.dart';
import 'package:git_auth_benim/main.dart';

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

    // var _user = Get.find<GoogleSignInService>().getFireUser();

    Get.find<GoogleSignInService>().yonlendirme(
        homePath: Routes.HOME_FOR_FIREUSER, loginPath: Routes.LOGIN);

    // if (getStorge.read("id") != null) {
    //   // Get.find<GoogleSignInService>().userCheck();

    //   // if (Get.find<GoogleSignInService>().getUser() != null) {
    //   print("getStorge.read('id') != null - Get.offAllNamed(Routes.HOME)");
    //   Future.delayed(const Duration(milliseconds: 2000), () {
    //     Get.offAllNamed(Routes.HOME);
    //   });

    //   // Get.offAllNamed(Routes.HOME);
    //   // print("getStorge.read('id') != null ");
    // } else {
    //   print("elseeee ");
    //   Future.delayed(const Duration(milliseconds: 2000), () {
    //     Get.offAllNamed(Routes.LOGIN);
    //   });
    // }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
