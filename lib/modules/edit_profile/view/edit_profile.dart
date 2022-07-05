import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktokap/config/data/data_videos.dart';
import 'package:tiktokap/config/routes/pages.dart';
import 'package:tiktokap/modules/edit_profile/view/modules/edit_profile_img.dart';
import 'package:tiktokap/modules/edit_profile/view/modules/list_title_profile.dart';
import 'package:tiktokap/modules/profiles/controller/profile_controller.dart';
import 'package:tiktokap/modules/profiles/modules/editprofile.dart';
import 'package:tiktokap/modules/profiles/modules/list_video_profile.dart';
import 'package:tiktokap/widgets/avatar/avatar_label.dart';

class EditProFile extends GetView<ProfileController> {
  const EditProFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: const Text(
            "Edit Profile",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageEditProfile(
                size: size,
                video: videos[1],
              ),
              ListTitleProfile(
                userDetail: userdetails[0],
              ),
            ],
          ),
        ));
  }
}
