import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktokap/modules/Splash/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
