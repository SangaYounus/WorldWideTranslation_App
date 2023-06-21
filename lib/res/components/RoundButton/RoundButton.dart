import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class RoundButton extends StatelessWidget {
  final String title;

  final VoidCallback onpress;

  RoundButton({
    Key? key,
    required this.title,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        width: 382.w,
        height: 50.h,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.ButtonShadow2.withOpacity(0.6),
                spreadRadius: 15,
                blurRadius: 18,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
                colors: [AppColors.ButtonGr1, AppColors.ButtonGr2])),
        child: Center(
          child: Text(title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
