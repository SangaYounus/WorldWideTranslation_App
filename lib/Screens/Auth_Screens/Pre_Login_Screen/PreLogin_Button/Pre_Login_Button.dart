import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class Pre_LoginButton extends StatelessWidget {
  final String Txt;
  VoidCallback onpress;

  final IconData iconData;

  Pre_LoginButton({
    Key? key,
    required this.Txt,
    required this.onpress,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: 382.w,
        height: 50.h,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.ButtonShadow2.withOpacity(0.4),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: [AppColors.ButtonGr1, AppColors.ButtonGr2])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                child: Icon(
              iconData,
              color: AppColors.ButtonIconColor,
              size: 30,
            )),
            SizedBox(
              width: 20.sp,
            ),
            Text(Txt,
                style: GoogleFonts.poppins(fontSize: 18, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
