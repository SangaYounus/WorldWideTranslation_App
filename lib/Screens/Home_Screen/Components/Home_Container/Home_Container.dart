import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class Home_Container extends StatelessWidget {
  const Home_Container({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 155.h,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 11),
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
      child: Column(
        children: [
          Text(
            'Lorem ipsum dolor sit amet consectetur\nadipiscing, elit congue nisi rutrum platea lacinia\nsapien, sed vel cras torquent scelerisque.',
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                color: AppColors.FieldTxtlabelColor, fontSize: 13),
          ),
          SizedBox(
            height: 55.h,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/Icon metro-volume-high.png',
              scale: 3.5,
            ),
          )
        ],
      ),
    );
  }
}
