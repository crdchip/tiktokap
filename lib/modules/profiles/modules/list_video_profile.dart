import 'package:flutter/material.dart';
import 'package:tiktokap/modules/profiles/modules/models/models_client/tab1.dart';
import 'package:tiktokap/modules/profiles/modules/models/models_client/tab2.dart';

class ListVideoProfile extends StatefulWidget {
  const ListVideoProfile({
    Key? key,
  }) : super(key: key);

  @override
  State<ListVideoProfile> createState() => _ListVideoProfileState();
}

class _ListVideoProfileState extends State<ListVideoProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TabBar(
                    labelColor: Colors.amberAccent,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        icon: Icon(
                          Icons.ac_unit_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.menu_sharp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Tab1(),
                Tab2(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
