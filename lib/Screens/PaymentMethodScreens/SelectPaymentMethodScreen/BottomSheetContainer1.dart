import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class BottomSheetContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.w,
      height: 372.h,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.FieldTxtlabelColor,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.FieldTxtlabelColor.withOpacity(0.2)),
              child: Image.asset(
                'assets/images/Icon awesome-thumbs-up.png',
                scale: 3,
              ),
            ),
            15.verticalSpace,
            Text(
              'Congratulations',
              style: GoogleFonts.poppins(
                color: AppColors.FieldTxtlabelColor,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Payment done successfully',
              style: TextStyle(
                  color: AppColors.FieldTxtlabelColor, fontSize: 18.sp),
            ),
            GestureDetector(
              onTap: () {
                PersistentTabController _controller;

                _controller = PersistentTabController(initialIndex: 0);
                Get.toNamed('/BottomNavBar');
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 38),
                width: 430.w,
                height: 61.h,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.FieldTxtlabelColor.withOpacity(0.5))),
                child: Center(
                  child: Text(
                    'Go Back To Home',
                    style: TextStyle(
                        color: AppColors.FieldTxtlabelColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
