import 'package:flutter/material.dart';
import 'package:tiktokap/modules/profiles/modules/models/models_client/followers_profile.dart';
import 'package:tiktokap/modules/profiles/modules/models/models_client/folowing_profile.dart';
import 'package:tiktokap/modules/profiles/modules/models/models_client/likes_profile.dart';

class Interactive extends StatelessWidget {
  const Interactive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FolowingProfile(
            count_following: '14',
          ),
          SizedBox(
            width: 10,
          ),
          FollowersProfile(
            count_follower: "38",
          ),
          SizedBox(
            width: 10,
          ),
          LikesProfile(
            count_likes: "91",
          ),
        ],
      ),
    );
  }
}
