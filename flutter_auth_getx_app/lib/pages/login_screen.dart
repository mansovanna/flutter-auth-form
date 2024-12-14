import 'package:flutter/material.dart';
import 'package:flutter_auth_getx_app/controller/auth_controller.dart';
import 'package:flutter_auth_getx_app/pages/signup_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF493AD5),
                ),
                textAlign: TextAlign.center,
              ),

              //   -------------------
              const SizedBox(
                height: 30,
              ),
              Obx(
                () => TextField(
                  controller: authController.emailController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color(0xFF493AD5),
                    ),
                    labelText: "Email",
                    labelStyle: const TextStyle(
                      color: Color(0xFF493AD5),
                    ),
                    errorText: authController.isEmailValid.value
                        ? null
                        : "Enter a valid email",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              //   ==========================
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => TextField(
                  controller: authController.passwordController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xFF493AD5),
                    ),
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      color: Color(0xFF493AD5),
                    ),
                    errorText: authController.isPassword.value
                        ? null
                        : "Password must be at least 6 character",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => authController.login(),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF493AD5),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => Get.to(() => SignupScreen()),
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(
                    color: Color(0xFF493AD5),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
