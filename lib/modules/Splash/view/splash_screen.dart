import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktokap/modules/Splash/controller/splash_controller.dart';
import 'package:tiktokap/modules/auth/view/auth_screen.dart';
import 'package:tiktokap/modules/dash_boar/view/dash_boar_screen.dart';
import 'package:tiktokap/modules/discover/view/discover_screen.dart';
import 'package:tiktokap/modules/edit_profile/view/edit_profile.dart';
import 'package:tiktokap/modules/message/view/messager_screen.dart';
import 'package:tiktokap/modules/profiles/view/profile_screen.dart';
import 'package:tiktokap/modules/settings/view/setting_screen.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (_) {
      return controller.userStatus == true ? AuthPage() : SettingPage();
    });
  }
}
