import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class PronounciationContainer extends StatelessWidget {
  const PronounciationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 158.h,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pronounce',
                style: GoogleFonts.poppins(
                    color: AppColors.FieldTxtlabelColor, fontSize: 11.sp),
              ),
              SizedBox(
                width: 80.sp,
              ),
              Text(
                'British pronunciation',
                style: GoogleFonts.poppins(
                    color: AppColors.FieldTxtlabelColor, fontSize: 11.sp),
              ),
              Image.asset(
                'assets/images/Icon ionic-ios-arrow-down.png',
                scale: 4.sp,
              )
            ],
          ),
          5.verticalSpace,
          Divider(
            color: Colors.black,
          ),
          4.verticalSpace,
          Column(
            children: [
              Text(
                'Sounds like',
                style: GoogleFonts.poppins(
                    color: AppColors.FieldTxtlabelColor, fontSize: 11.sp),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'pruh · nowns',
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp),
              ),
              12.horizontalSpace,
              Image.asset(
                'assets/images/Icon metro-volume-high.png',
                scale: 4.5.sp,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/97a4fe38-2c1d-4f04-8f1c-f6df8ae37d80.png',
              scale: 4.4.sp,
            ),
          ),
        ],
      ),
    );
  }
}
