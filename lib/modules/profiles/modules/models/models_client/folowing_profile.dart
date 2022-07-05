import 'package:flutter/material.dart';

class FolowingProfile extends StatelessWidget {
  const FolowingProfile({
    Key? key,
    required this.count_following,
  }) : super(key: key);
  final String count_following;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "${count_following}",
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
