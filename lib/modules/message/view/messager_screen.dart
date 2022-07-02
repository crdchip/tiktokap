import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tiktokap/modules/discover/modules/nav_search.dart';
import 'package:tiktokap/modules/message/controller/messager_controller.dart';

class MessagerPage extends GetView<MessagerController> {
  MessagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
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
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return index == 0
                              ? SizedBox(
                                  height: size.height * 0.3,
                                  child: Column(
                                    children: [
                                      const ListTile(
                                        leading: Text("Hoạt động "),
                                        trailing:
                                            Icon(Icons.navigate_next_outlined),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.2,
                                        child: ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: 2,
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              leading: const Icon(
                                                  Icons.account_box_rounded),
                                              title: Text("$index"),
                                              subtitle: Text("$index ngày"),
                                              trailing: const Icon(
                                                  Icons.navigate_next_outlined),
                                            );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : SizedBox(
                                  height: size.height,
                                  child: Column(
                                    children: [
                                      const ListTile(
                                        leading: Text("Tin Nhắn"),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.8,
                                        child: ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: 10,
                                          itemBuilder: (context, index) {
                                            return ListTile(
                                              leading: const Icon(
                                                  Icons.account_box_rounded),
                                              title: Text("$index"),
                                              subtitle: Text("$index ngày"),
                                              trailing: const Icon(
                                                  Icons.navigate_next_outlined),
                                            );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                );
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
        ],
      ),
    );
  }
}
