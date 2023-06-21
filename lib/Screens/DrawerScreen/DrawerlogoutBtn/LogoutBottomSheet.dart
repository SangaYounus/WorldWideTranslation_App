import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.w,
      height: 260.h,
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
            Text(
              'Log out',
              style: GoogleFonts.poppins(
                  color: AppColors.FieldTxtlabelColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
            ),
            10.verticalSpace,
            Text(
              '  Are you sure you\n   want to logout',
              style: TextStyle(
                  color: AppColors.FieldTxtlabelColor, fontSize: 20.sp),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    width: 179.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                AppColors.FieldTxtlabelColor.withOpacity(0.5))),
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.poppins(
                            color: AppColors.FieldTxtlabelColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/SignInScreen');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: 179.w,
                    height: 55.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                AppColors.FieldTxtlabelColor.withOpacity(0.5))),
                    child: Center(
                      child: Text(
                        'Logout',
                        style: GoogleFonts.poppins(
                            color: AppColors.FieldTxtlabelColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
