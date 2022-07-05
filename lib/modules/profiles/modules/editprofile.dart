import 'package:flutter/material.dart';
import 'package:tiktokap/config/data/data_videos.dart';
import 'package:tiktokap/modules/profiles/modules/models/button_edit_profile.dart';
import 'package:tiktokap/modules/profiles/modules/models/img_profile.dart';
import 'package:tiktokap/modules/profiles/modules/models/interactive.dart';
import 'package:tiktokap/modules/profiles/modules/models/overright_context.dart';

class EditProfile extends StatelessWidget {
  EditProfile({
    Key? key,
  }) : super(key: key);

  List<bool> isSelect = [
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImgProfile(
            video: videos[1],
          ),
          const SizedBox(
            height: 10,
          ),
          const Interactive(),
          const SizedBox(
            height: 10,
          ),
          const ButtonEditProfile(),
          const SizedBox(
            height: 20,
          ),
          const OverightContext(),
        ],
      ),
    );
  }
}
