import 'package:flutter/material.dart';

class FollowersProfile extends StatelessWidget {
  const FollowersProfile({
    Key? key,
    required this.count_follower,
  }) : super(key: key);
  final String count_follower;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "$count_follower",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Folowing",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
