import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class Home2Container extends StatelessWidget {
  const Home2Container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          width: 135.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: -0.1,
                blurRadius: 13,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Center(
            child: Text(
              'English',
              style: GoogleFonts.poppins(
                  color: AppColors.FieldTxtlabelColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          )),
      SizedBox(
        width: 10.w,
      ),
      Image.asset(
        'assets/images/Icon awesome-exchange-alt.png',
        scale: 4,
      ),
      SizedBox(
        width: 10.w,
      ),
      Container(
          width: 135.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: -0.1,
                blurRadius: 13,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Center(
            child: Text(
              'Arabic',
              style: GoogleFonts.poppins(
                  color: AppColors.FieldTxtlabelColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          )),
    ]);
  }
}
