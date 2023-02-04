import 'package:f_drive/controller/auth_controller.dart';
import 'package:f_drive/screens/LoginScreen.dart';
import 'package:f_drive/screens/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Root(),
    );
  }
}

class Root extends StatelessWidget {
  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return authController.user.value != null ? HomeScreen() : LoginScreen();
    });
  }
}
