import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:tiktokap/config/data/data_videos.dart';
import 'package:tiktokap/modules/home/controller/home_controller.dart';
import 'package:tiktokap/modules/home/modules/label_left.dart';
import 'package:tiktokap/modules/home/modules/right_icon.dart';
import 'package:tiktokap/modules/home/modules/video_title.dart';
import 'package:tiktokap/widgets/label/label_nav.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  String routes = "/homepage";

  List rightItems = [
    {
      "icon": Icons.heart_broken,
      "label": "65.2k",
      "isIcon": true,
    },
    {
      "icon": Icons.comment_outlined,
      "label": "2000",
      "isIcon": true,
    },
    {
      "icon": Icons.share,
      "label": "1225",
      "isIcon": true,
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent.withOpacity(0.25),
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.home_max,
              size: 35,
            ),
          ],
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            LabelNav(
              text: "Following",
              color1: Colors.transparent.withOpacity(0.25),
              color2: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "|",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            LabelNav(
              text: "Follow",
              color1: Colors.white,
              color2: Colors.transparent.withOpacity(0.25),
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.search_sharp,
            size: 35,
          )
        ],
      ),
      body: PageView.builder(
        onPageChanged: (int page) {
          print("Page $page");
        },
        pageSnapping: true,
        scrollDirection: Axis.vertical,
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  VideoTitle(
                    video: videos[index],
                  ),
                  LabelLeft(size: size),
                  IconRight(
                    video: videos[index],
                  ),
                ]),
              ),
            ],
          );
        },
      ),
    );
  }
}
