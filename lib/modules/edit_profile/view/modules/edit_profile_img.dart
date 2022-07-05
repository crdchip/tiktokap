import 'package:flutter/material.dart';
import 'package:tiktokap/config/data/videos.dart';
import 'package:tiktokap/widgets/avatar/avatar_label.dart';
import 'package:tiktokap/widgets/avatar/avatar_label_edit.dart';

class ImageEditProfile extends StatelessWidget {
  const ImageEditProfile({
    Key? key,
    required this.size,
    required this.video,
  }) : super(key: key);

  final Size size;
  final Video video;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              EditAvatarLabel(
                image: Image.asset(
                  "assets/images/${video.postedBy.urlImg}",
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
                text: "Change Photo",
              ),
              const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Icon(Icons.add_a_photo_rounded))
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          EditAvatarLabel(
            image: Image.asset(
              "assets/images/${video.postedBy.urlImg}",
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
            text: "Change Video",
          ),
        ],
      ),
    );
  }
}
