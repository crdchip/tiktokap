import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktokap/modules/Splash/controller/splash_controller.dart';


class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (_) {
      return controller.userStatus == true ? DashBoarPage() : AuthPage();
    });
  }
}
