import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tiktokap/modules/settings/controller/setting_controller.dart';
import 'package:tiktokap/modules/settings/view/models/setting_account.dart';
import 'package:tiktokap/modules/settings/view/models/setting_general.dart';
import 'package:tiktokap/modules/settings/view/models/setting_support.dart';

class SettingPage extends GetView<SettingController> {
  SettingPage({Key? key}) : super(key: key);

  String routes = "/settings";

  final List<String> _listheadercontent = [
    "ACCOUNT",
    "GENERAL",
    "SUPPORT",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),
        title: const Text(
          "Privacy and settings",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // height: size.height * 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              AccCoutSetting(),
              GeneralSetting(),
              SupportSetting()
            ],
          ),
        ),
      ),
    );
  }
}
