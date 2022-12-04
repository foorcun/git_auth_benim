import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          // child: const Text("Login"),
          style: ElevatedButton.styleFrom(
            // primary:  // use backgroundColor:
            backgroundColor: Colors.white,
            // onPrimary:  // use foregroundColor
            foregroundColor: Colors.black,
            minimumSize: const Size(double.infinity, 50),
          ),
          onPressed: () async {
            await controller.login();
          },
          label: const Text("Login with Google"),
          icon: const FaIcon(
            FontAwesomeIcons.google,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
