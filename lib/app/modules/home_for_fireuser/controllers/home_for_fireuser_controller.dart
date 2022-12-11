import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:git_auth_benim/app/routes/app_pages.dart';
import 'package:git_auth_benim/core/service/google_sign_in_service.dart';

class HomeForFireuserController extends GetxController {
  //TODO: Implement HomeForFireuserController

  final getStorge = GetStorage();

  // UserCredential? _user;
  // String? _name;

  // String? get name {
  //   if (_user == null) takeFireUser();
  //   return _user?.user!.displayName;
  // }

  final photoUrl = "".obs;

  // set photoUrl(String? value) => this._photoUrl = value;

  // String? _email;
  // String? get email => this._email;

  // set email(String? value) => this._email = value;

  @override
  void onInit() {
    super.onInit();
    photoUrl.value = Get.find<GoogleSignInService>().myUser.value!.photoURL!;
  }

  @override
  void onReady() {
    super.onReady();
    // takeFireUser();
  }

  @override
  void onClose() {}

  // takeFireUser() {
  //   _user = Get.find<GoogleSignInService>().getFireUser();
  // }

  logout() async {
    getStorge.erase();
    Get.find<GoogleSignInService>().logout();

    Get.offAllNamed(Routes.LOGIN);
  }
}
