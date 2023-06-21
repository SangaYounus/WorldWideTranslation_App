import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/DrawerScreen/DrawerlogoutBtn/LogoutBottomSheet.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class DrawerLogOutBtn extends StatelessWidget {
  const DrawerLogOutBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.bottomSheet(
            barrierColor: Colors.black.withOpacity(0.8), LogoutBottomSheet());
      },
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          width: 160.w,
          height: 56.h,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.ButtonShadow2.withOpacity(0.6),
                  spreadRadius: 15,
                  blurRadius: 18,
                  offset: Offset(0, 3),
                )
              ],
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  topRight: Radius.circular(40)),
              gradient: LinearGradient(
                  colors: [AppColors.ButtonGr1, AppColors.ButtonGr2])),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Icon open-account-logout.png',
                scale: 4,
              ),
              22.horizontalSpace,
              Text('Logout',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
