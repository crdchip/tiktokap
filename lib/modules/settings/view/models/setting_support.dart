import 'package:flutter/material.dart';
import 'package:tiktokap/widgets/setting/liset_title_settings.dart';

class SupportSetting extends StatelessWidget {
  const SupportSetting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black12,
            width: 1,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          ListTile(
            leading: Text("SUPPORT"),
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Report a problem",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Help center",
            icon_train: Icons.navigate_next,
          ),
        ],
      ),
    );
  }
}
