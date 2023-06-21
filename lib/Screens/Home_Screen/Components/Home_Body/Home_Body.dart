import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/Components/Home2Container/Home2Container.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/Components/Home_Container/Home_Container.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:world_wide_translation_app/res/components/RoundButton/RoundButton.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Home_Container(),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
                onTap: () {
                  Get.toNamed('/LanguageScreen');
                },
                child: Home2Container()),
            SizedBox(
              height: 20,
            ),
            Home_Container(),
            SizedBox(
              height: 20,
            ),
            Container(
                width: 327.w,
                height: 50.h,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Offline Mode',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    Switch(
                        activeColor: Colors.green,
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        })
                  ],
                )),
            SizedBox(
              height: 30.h,
            ),
            RoundButton(
                title: 'Pronunciation',
                onpress: () {
                  Get.toNamed('/PronounciationScreen');
                }),
            SizedBox(
              height: 10.h,
            ),
            RoundButton(
                title: 'Text to Speech and Speech to Text', onpress: () {}),
            SizedBox(
              height: 10.h,
            ),
            RoundButton(
                title: 'Phrasebook',
                onpress: () {
                  Get.toNamed('/PhraseBookScreen');
                }),
            SizedBox(
              height: 110.h,
            ),
          ],
        ),
      ),
    );
  }
}
