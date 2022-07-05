import 'package:flutter/material.dart';

class ListTitleSettings extends StatelessWidget {
  const ListTitleSettings({
    Key? key,
    required this.icon_lead,
    required this.title,
    required this.icon_train,
  }) : super(key: key);
  final IconData icon_lead;
  final String title;
  final IconData icon_train;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(icon_lead),
        title: Text(title),
        trailing: Icon(icon_train),
      ),
    );
  }
}
