import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AuthController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var isEmailValid = true.obs;
  var isPassword = true.obs;
  var isConfirmPasswordValid = true.obs;

  void login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || !email.isEmail) {
      isEmailValid.value = false;
    } else {
      isEmailValid.value = true;
    }

    if (password.isEmpty || password.length < 6) {
      isPassword.value = false;
    } else {
      isPassword.value = true;
    }

    //
    if (isEmailValid.value &&
        isPassword.value &&
        emailController.text == "dear@gmail.com") {
      emailController.clear();
      passwordController.clear();
      Get.snackbar(
        "Success",
        "Login In Successfully",
        colorText: Colors.white,
        backgroundColor: Colors.green,
      );
    } else {
      Get.snackbar("Error", "Logged In Failed!",
          colorText: Colors.white, backgroundColor: Colors.redAccent);
    }
  }

  void signup() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmpassword = confirmPasswordController.text.trim();

    if (email.isEmpty || !email.isEmail) {
      isEmailValid.value = false;
    } else {
      isEmailValid.value = true;
    }

    if (password.isEmpty || password.length < 6) {
      isPassword.value = false;
    } else {
      isPassword.value = true;
    }

    if (confirmpassword != password) {
      isConfirmPasswordValid.value = false;
    } else {
      isConfirmPasswordValid.value = true;
    }

    //
    if (isEmailValid.value &&
        isPassword.value &&
        isConfirmPasswordValid.value) {
      emailController.clear();
      passwordController.clear();
      confirmPasswordController.clear();
      Get.snackbar(
        "Success",
        "Signed Up Successfully",
        colorText: Colors.white,
        backgroundColor: Colors.green,
      );
    } else {
      Get.snackbar(
        "Error",
        "Signed Up Failed!",
        colorText: Colors.white,
        backgroundColor: Colors.redAccent,
      );
    }
  }
}
