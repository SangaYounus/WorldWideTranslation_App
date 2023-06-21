import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SelectLanguageScreen/LanguageListTile.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class LanguageBody extends StatefulWidget {
  const LanguageBody({super.key});

  @override
  State<LanguageBody> createState() => _LanguageBodyState();
}

class _LanguageBodyState extends State<LanguageBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recently used',
                style: GoogleFonts.poppins(
                    color: AppColors.FieldTxtlabelColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'English (USA)',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Image.asset(
                  'assets/images/Icon feather-refresh-ccw.png',
                  scale: 4.5,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'All Languages',
                style: GoogleFonts.poppins(
                    color: AppColors.FieldTxtlabelColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 382.w,
              height: 52.h,
              decoration: BoxDecoration(
                  color: Color(0xff518FF5),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'English',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 20.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            LanguageListtile(
              txt: 'Spanish',
            ),
            LanguageListtile(
              txt: 'German',
            ),
            LanguageListtile(
              txt: 'Italian',
            ),
            LanguageListtile(
              txt: 'Japanese',
            ),
            LanguageListtile(
              txt: 'Chinese',
            ),
            LanguageListtile(
              txt: 'Russia',
            ),
            LanguageListtile(
              txt: 'Korean',
            ),
            LanguageListtile(
              txt: 'Portuguese',
            ),
            LanguageListtile(
              txt: 'Irish',
            ),
            LanguageListtile(
              txt: 'Polish',
            ),
            LanguageListtile(
              txt: 'Swedish',
            ),
            LanguageListtile(
              txt: 'Arabic',
            ),
            LanguageListtile(
              txt: 'Indonesian',
            ),
            LanguageListtile(
              txt: 'Greek',
            ),
            LanguageListtile(
              txt: 'Danish',
            ),
          ],
        ),
      ),
    );
  }
}


