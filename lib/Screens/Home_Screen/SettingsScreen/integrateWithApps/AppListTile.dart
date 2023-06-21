import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class AppListTile extends StatelessWidget {
  final String txt;
  final String img;
  const AppListTile({
    Key? key,
    required this.txt,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        img,
        scale: 3.5,
      ),
      title: Text(
        txt,
        style: TextStyle(
            color: AppColors.FieldTxtlabelColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
