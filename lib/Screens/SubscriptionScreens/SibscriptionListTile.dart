import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class SubscriptionListTILE extends StatelessWidget {
  final String txt;
  const SubscriptionListTILE({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.check,
        color: AppColors.PkgIconColor,
        size: 20.sp,
      ),
      title: Text(
        txt,
        style: TextStyle(color: Colors.black, fontSize: 12.sp),
      ),
    );
  }
}
