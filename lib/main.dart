import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_13/screen/HomeScreen.dart';
import 'package:pas1_mobile_11pplg2_13/screen/loginPage.dart';
import 'package:pas1_mobile_11pplg2_13/screen/profileScreen.dart';
import 'package:pas1_mobile_11pplg2_13/screen/splash.dart';
import 'package:pas1_mobile_11pplg2_13/widgets/navbottom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/login', page: () =>  LoginPage()),
        GetPage(name: '/home', page: () => NavBottom()),
        GetPage(name: '/profile', page: () => const ProfileScreen()),
      ],
    );
  }
}