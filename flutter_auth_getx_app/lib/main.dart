import 'package:flutter/material.dart';
import 'package:flutter_auth_getx_app/pages/login_screen.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF493AD5),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      home: LoginScreen(),
    );
  }
}
