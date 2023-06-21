import 'package:flutter/material.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class LanguageListtile extends StatelessWidget {
  final String txt;

  const LanguageListtile({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        txt,
        style: TextStyle(color: AppColors.FieldTxtlabelColor),
      ),
      trailing: Image.asset(
        'assets/images/Icon awesome-download.png',
        scale: 4,
      ),
    );
  }
}