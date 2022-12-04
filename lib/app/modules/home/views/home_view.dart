import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CircleAvatar(
            //   radius: 40,
            //   backgroundImage: NetworkImage(controller.photoUrl!),
            // ),
            Text(controller.photoUrl.toString()),
            Text(
              // controller.name == null ? "bu null true" : "bu null false",
              controller.name ?? "isim alinamadi",
              style: const TextStyle(fontSize: 20),
            ),
            Text(controller.email.toString()),
            ElevatedButton(
              child: const Text("Logout"),
              onPressed: () {
                controller.logout();
              },
            )
          ],
        ),
      ),
    );
  }
}
