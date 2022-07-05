import 'package:flutter/material.dart';
import 'package:tiktokap/config/data/videos.dart';

class EditAvatarLabel extends StatelessWidget {
  const EditAvatarLabel({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: image,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
