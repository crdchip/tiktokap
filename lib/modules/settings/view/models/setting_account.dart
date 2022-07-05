import 'package:flutter/material.dart';
import 'package:tiktokap/widgets/setting/liset_title_settings.dart';

class AccCoutSetting extends StatelessWidget {
  const AccCoutSetting({
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
            leading: Text("ACCOUNT"),
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Manage my account",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Manage my account",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.lock,
            title: "Pryvacy and safety",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Content preferences",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Balance",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "Share Profile",
            icon_train: Icons.navigate_next,
          ),
          ListTitleSettings(
            icon_lead: Icons.person,
            title: "TikCode",
            icon_train: Icons.navigate_next,
          ),
        ],
      ),
    );
  }
}
