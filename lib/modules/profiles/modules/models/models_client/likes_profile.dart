import 'package:flutter/material.dart';

class LikesProfile extends StatelessWidget {
  const LikesProfile({
    Key? key,
    required this.count_likes,
  }) : super(key: key);
  final String count_likes;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "$count_likes",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Likes",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
