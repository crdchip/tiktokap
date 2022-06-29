import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktokap/config/routes/pages.dart';
import 'package:tiktokap/modules/Splash/binding/splash_binding.dart';
import 'package:tiktokap/modules/Splash/view/splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialBinding: SplashBinding(),
    initialRoute: Routes.SPLASH,
    getPages: AppPages.pages,
    home: const SplashPage(),
  ));
}
