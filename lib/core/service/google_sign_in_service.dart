import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:git_auth_benim/app/routes/app_pages.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInService extends GetxService {
  GoogleSignInAccount? _user;
  final googleSignIn = GoogleSignIn();

  UserCredential? _fireUser;

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

  GoogleSignInAccount? getUser() {
    return _user;
  }

  getFireUser() {
    return _fireUser;
  }

  Future login() async {
    //
    // getStorge.write("id", 1);
    // getStorge.write("name", "Ripples Code");

    final googleUser = await googleSignIn.signIn(); //type GoogleSignInAccount?

    print("login: google User: ${googleUser.toString()}");

    if (googleUser == null) return;
    _user = googleUser;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // print("login: googleAuth: ${googleAuth.toString()}");

    final OAuthCredential credential = GoogleAuthProvider.credential(
      //type OAuthCredential
      //
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    print("login: OAuthCredential: ${googleUser.toString()}");

    _fireUser = await FirebaseAuth.instance.signInWithCredential(credential);

    Get.offAllNamed(Routes.HOME);
  }

  Future logout() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }

  userCheck() {
    // final googleUser = googleSignIn.currentUser; //type GoogleSignInAccount?
    // if (googleUser != null) {
    //   _user = googleUser;
    //   Get.offAllNamed(Routes.HOME);
    // }
  }

  Future<bool> isUserLogged() async {
    User firebaseUser = FirebaseAuth.instance.currentUser!;

    if (firebaseUser != null) {
      var tokenResult = await firebaseUser.getIdToken();
      print("token result " + tokenResult);
      return true;
      // return tokenResult.token != null;
    } else {
      return false;
    }
  }
}
