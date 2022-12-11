import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:git_auth_benim/core/service/google_sign_in_service.dart';

import '../controllers/home_for_fireuser_controller.dart';

class HomeForFireuserView extends GetView<HomeForFireuserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeForFireuserView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Obx(
              () => CircleAvatar(
                radius: 40,
                // ignore: prefer_const_constructors
                backgroundImage: NetworkImage(
                    // Get.find<GoogleSignInService>().myUser.value!.photoURL!),
                    controller.photoUrl.value),
                // "asdf")),
              ),
            ),
            // Text(controller.photoUrl.toString()),
            // Text(
            //   // controller.name == null ? "bu null true" : "bu null false",
            //   controller.name ?? "isim alinamadi",
            //   style: const TextStyle(fontSize: 20),
            // ),

            Text(
              // controller.name == null ? "bu null true" : "bu null false",
              Get.find<GoogleSignInService>().myUser.value?.displayName ??
                  "isim alinamadi",
              style: const TextStyle(fontSize: 20),
            ),
            Text(Get.find<GoogleSignInService>().myUser.value!.email!),
            ElevatedButton(
              child: const Text("Logout"),
              onPressed: () {
                controller.logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
