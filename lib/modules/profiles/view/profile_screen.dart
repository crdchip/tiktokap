import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktokap/modules/profiles/controller/profile_controller.dart';
import 'package:tiktokap/modules/profiles/modules/editprofile.dart';
import 'package:tiktokap/modules/profiles/modules/list_video_profile.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person_add_alt),
        centerTitle: true,
        title: const Text("Jacob West"),
        actions: const [
          Icon(Icons.add_box_sharp),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? EditProfile()
                          : const ListVideoProfile();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
