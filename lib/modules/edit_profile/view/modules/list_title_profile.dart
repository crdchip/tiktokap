import 'package:flutter/material.dart';
import 'package:tiktokap/config/data/data_videos.dart';
import 'package:tiktokap/config/data/user_detail.dart';
import 'package:tiktokap/widgets/profile/detail_profile.dart';

class ListTitleProfile extends StatelessWidget {
  ListTitleProfile({
    Key? key,
    required this.userDetail,
  }) : super(key: key);

  final UserDetail userDetail;

  List listdetails = [
    'Name',
    'Username',
    '',
    'Bio',
    'Instagram',
    'Youtube',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DetailProfile(
              icon: Icons.navigate_next_outlined,
              username: listdetails[0],
              usernamedetail: userDetail.username,
            ),
            DetailProfile(
              icon: Icons.navigate_next_outlined,
              username: listdetails[1],
              usernamedetail: userDetail.usernamedetail,
            ),
            DetailProfile(
              icon: Icons.navigate_next_outlined,
              username: listdetails[2],
              usernamedetail: userDetail.gmail,
            ),
            DetailProfile(
              icon: Icons.navigate_next_outlined,
              username: listdetails[3],
              usernamedetail:
                  userDetail.bio == "" "" ? "Add a bio to your bio" : "",
            ),
            DetailProfile(
              icon: Icons.navigate_next_outlined,
              username: listdetails[4],
              usernamedetail: userDetail.instagram == "" ""
                  ? "Add instagram to your profile"
                  : "",
            ),
            DetailProfile(
              icon: Icons.navigate_next_outlined,
              username: listdetails[5],
              usernamedetail:
                  userDetail.youtube == "" ? "Add youtube to your profile" : "",
            ),
          ],
        ));
  }
}
