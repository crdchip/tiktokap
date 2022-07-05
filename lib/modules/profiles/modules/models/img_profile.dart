import 'package:flutter/material.dart';
import 'package:tiktokap/config/data/videos.dart';
import 'package:tiktokap/widgets/avatar/avatar_label.dart';

class ImgProfile extends StatelessWidget {
  ImgProfile({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AvatarLabel(
      video: video,
      image: Image.asset(
        "assets/images/${video.postedBy.urlImg}",
        height: 70,
        width: 70,
        fit: BoxFit.cover,
      ),
      text: 'JacodWest',
    );
  }
}
