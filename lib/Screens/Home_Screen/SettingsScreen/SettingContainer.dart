import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class SettingContainer extends StatelessWidget {
  final String txt;

  final VoidCallback onpress;
  const SettingContainer({
    Key? key,
    required this.txt,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        width: 382.w,
        height: 60.h,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: -0.1,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Text(
          txt,
          style:
              TextStyle(fontSize: 15.sp, color: AppColors.FieldTxtlabelColor),
        ),
      ),
    );
  }
}
