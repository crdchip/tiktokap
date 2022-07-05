import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktokap/config/data/data_videos.dart';

import 'package:tiktokap/modules/discover/controller/discover_controller.dart';

import 'package:tiktokap/modules/discover/modules/nav_search.dart';
import 'package:tiktokap/modules/discover/modules/video_client.dart';

class DiscoverPage extends GetView<DiscoverController> {
  DiscoverPage({Key? key}) : super(key: key);

  String routes = "/discover";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Stack(children: [
          Container(
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: size.height,
                    child: ListView.builder(
                        itemCount: 7,
                        // scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return index == 0
                              ? Container(
                                  child: Image.network(
                                    "https://blog.abit.vn/wp-content/uploads/2020/04/anh-dai-dien-6.jpg",
                                    fit: BoxFit.cover,
                                    width: size.width,
                                  ),
                                )
                              : Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  color: Colors.white,
                                  height: size.height * 0.27,
                                  width: size.width,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        SizedBox(
                                            height: size.height * 0.08,
                                            width: size.width,
                                            child: ListTile(
                                              leading: const Icon(
                                                Icons.ac_unit_outlined,
                                                size: 40,
                                              ),
                                              title: Text("Item $index"),
                                              subtitle: Text("Hastag $index"),
                                              trailing: Text("$index"),
                                            )),
                                        SizedBox(
                                          height: size.height * 0.17,
                                          child: ListView.builder(
                                            itemCount: 6,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                margin: const EdgeInsets.only(
                                                  left: 5,
                                                  top: 5,
                                                ),
                                                width: 90,
                                                color: Colors.black45,
                                                child: Center(
                                                  // child: VideoClient(
                                                  //   video: videos[index],
                                                  // ),
                                                  child: Text("Video $index"),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ));
                        }),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: NavSearch(size: size),
          ),
        ]));
  }
}
