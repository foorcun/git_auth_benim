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
            Text(
              controller.name,
              style: const TextStyle(fontSize: 20),
            ),
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
