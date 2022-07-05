import 'package:flutter/material.dart';
import 'package:tiktokap/config/data/videos.dart';

class AvatarLabel extends StatelessWidget {
  const AvatarLabel({
    Key? key,
    required this.video,
    required this.image,
    required this.text,
  }) : super(key: key);

  final Video video;
  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(50), child: image),
          const SizedBox(
            height: 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}
