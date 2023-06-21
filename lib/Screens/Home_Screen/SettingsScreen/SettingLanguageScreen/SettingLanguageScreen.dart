import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SelectLanguageScreen/LanguageBody.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SelectLanguageScreen/LanguageListTile.dart';

class SettingSelectLangScreen extends StatelessWidget {
  const SettingSelectLangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Select Language',
        style: GoogleFonts.poppins(
            fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: Image.asset(
          'assets/images/Path 4763.png',
          scale: 3.5,
        ),
      ),
      elevation: 1,
    );
  }
}
