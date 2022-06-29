import 'package:flutter/material.dart';

import 'package:tiktokap/widgets/textfiels/text_fiel_login.dart';

class FormButton extends StatelessWidget {
  const FormButton({Key? key, required this.text, required this.onLogin})
      : super(key: key);
  final String text;
  final VoidCallback onLogin;

  @override
  Widget build(BuildContext context) {
    return TextFielLogin(
        child: FlatButton(onPressed: () => onLogin(), child: Text(text)));
  }
}
