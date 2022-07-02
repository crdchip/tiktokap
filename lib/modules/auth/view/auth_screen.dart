import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tiktokap/config/routes/pages.dart';
import 'package:tiktokap/modules/auth/view/components/form_button.dart';
import 'package:tiktokap/modules/auth/view/components/form_password.dart';
import 'package:tiktokap/modules/auth/view/components/form_username.dart';
import 'package:tiktokap/widgets/icon/form_button_icon.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String userEmail = "";
  String routes = "/auth";

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordContrller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormUserName(
            nameController: nameController,
          ),
          const SizedBox(
            height: 20,
          ),
          FormPassword(
            passwordController: passwordContrller,
          ),
          const SizedBox(
            height: 20,
          ),
          FormButton(
            text: 'Login',
            onLogin: () {
              if (nameController.value.text != "") {
                Get.toNamed(Routes.HOMEPAGE);
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          FormButtonIcon(
            text: "Đăng nhập bằng Google",
            onLogin: () {},
            icon: "logo-google.jpg",
          ),
          const SizedBox(
            height: 20,
          ),
          FormButtonIcon(
            text: "Đăng nhập bằng Facebook",
            onLogin: () {},
            icon: "logo-google.jpg",
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              // Get.toNamed(Routes.REGISTER);
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 13,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
