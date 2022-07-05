import 'package:flutter/material.dart';
import 'package:tiktokap/widgets/setting/liset_title_settings.dart';

class GeneralSetting extends StatelessWidget {
  const GeneralSetting({
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
            leading: Text("GENERAL"),
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Push notifications",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Language",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.lock,
            title: "Digital Wellbeing",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Accesssibility",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Data Saver",
            icon_train: Icons.navigate_next,
          ),
        ],
      ),
    );
  }
}
