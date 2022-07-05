import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ButtonEditProfile extends StatelessWidget {
  const ButtonEditProfile({
    Key? key,
  }) : super(key: key);

  final String routes = '/profile';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 35,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Icon(
                CupertinoIcons.bookmark_fill,
                color: Colors.yellowAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
