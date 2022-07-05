import 'package:flutter/material.dart';

class DetailProfile extends StatelessWidget {
  const DetailProfile({
    Key? key,
    required this.icon,
    required this.username,
    required this.usernamedetail,
  }) : super(key: key);

  final String username;
  final String usernamedetail;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      height: size.height * 0.05,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text("$username"),
          ),
          Container(
            child: Row(
              children: [
                Text("$usernamedetail"),
                Icon(icon),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
