import 'dart:html';

import 'package:flutter/material.dart';

class ListTileFindFriend extends StatelessWidget {
  const ListTileFindFriend({
    Key? key,
    required this.img,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String img;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.network(
          "$img",
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(text),
      trailing: Icon(icon),
    );
  }
}
// https://recmiennam.com/wp-content/uploads/2020/10/top-nhung-hinh-anh-girl-xinh-de-thuong-nhat-viet-nam-24.jpg
