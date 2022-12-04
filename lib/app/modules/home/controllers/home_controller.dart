import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:git_auth_benim/app/routes/app_pages.dart';
import 'package:git_auth_benim/core/service/google_sign_in_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final getStorge = GetStorage();

  // final user = FirebaseAuth.instance.currentUser!;

  String? _name;

  String? get name => this._name;

  set name(String? value) => this._name = value;

  String? _photoUrl;
  String? get photoUrl => this._photoUrl;

  set photoUrl(String? value) => this._photoUrl = value;

  String? _email;
  String? get email => this._email;

  set email(String? value) => this._email = value;

  @override
  void onInit() {
    super.onInit();

    name = getStorge.read("name");
    print("name " + name.toString());
    photoUrl = getStorge.read("photourl");
    print("photourl " + photoUrl.toString());
    // name = "abi be";

    email = getStorge.read("email");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  // String? getName() {
  //   // return user.displayName;
  //   return _name;
  // }

  // String? getPhotoURL() {
  //   // return user.photoURL;
  //   return photoURL;
  // }

  // logout() {
  logout() async {
    getStorge.erase();
    Get.find<GoogleSignInService>().logout();

    Get.offAllNamed(Routes.LOGIN);
  }
}
