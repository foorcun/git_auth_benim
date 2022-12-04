import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:git_auth_benim/core/service/google_sign_in_service.dart';
import 'firebase_options.dart';

import 'app/routes/app_pages.dart';

// flutter run -d chrome --web-hostname localhost --web-port 5000 --no-sound-null-safety
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await GetStorage.init();
  await initServices();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // debugShowCheckedModeBanner: false,
    ),
  );
}

Future<void> initServices() async {
  print("starting Services...");
  await Get.putAsync<GoogleSignInService>(
      () async => await GoogleSignInService());
  print("All services started...");
}
