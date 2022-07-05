import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:tiktokap/modules/find_friend/controller/find_friend_controller.dart';
import 'package:tiktokap/widgets/find_friend/list_tile_find_friend.dart';

class FindFriendPage extends GetView<FindFriendController> {
  FindFriendPage({Key? key}) : super(key: key);

  String routes = "/find_friend";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Find friends",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.center_focus_weak_sharp,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 5,
          right: 5,
          bottom: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
              ),
              height: 40,
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const ListTileFindFriend(
              img:
                  "https://recmiennam.com/wp-content/uploads/2020/10/top-nhung-hinh-anh-girl-xinh-de-thuong-nhat-viet-nam-24.jpg",
              text: "Invite friends",
              icon: Icons.navigate_next,
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTileFindFriend(
              img:
                  "https://luv.vn/wp-content/uploads/2021/06/hinh-anh-gai-viet-nam-xinh-dep-20.jpg",
              text: "Invite Contacts",
              icon: Icons.navigate_next,
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTileFindFriend(
              img:
                  "https://i.vietgiaitri.com/2017/10/14/top-10-co-gai-xinh-dep-nhat-viet-nam-xinh-nhu-thien-than-29ea01.jpg",
              text: "Find Facebook friends",
              icon: Icons.navigate_next,
            ),
          ],
        ),
      ),
    );
  }
}
