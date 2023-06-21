import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/DrawerScreen/DrawerScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/BottomSheetContainer.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/SettingContainer.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: DrawerScreen(),
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                  width: 382.w,
                  height: 64.h,
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
                        'Notifications',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            color: AppColors.FieldTxtlabelColor,
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
              10.verticalSpace,
              SettingContainer(
                txt: 'Select Language',
                onpress: () {
                  Get.toNamed('/SettingSelectLangScreen');
                },
              ),
              10.verticalSpace,
              SettingContainer(
                txt: 'Font Size',
                onpress: () {
                  Get.toNamed('/FontSizeScreen');
                },
              ),
              10.verticalSpace,
              SettingContainer(
                txt: 'Volume',
                onpress: () {
                  Get.toNamed('/SetVolumnScreen');
                },
              ),
              10.verticalSpace,
              SettingContainer(
                txt: 'Integrate With Messaging Apps',
                onpress: () {
                  Get.toNamed('/IntegrateWithAppScreen');
                },
              ),
              10.verticalSpace,
              SettingContainer(
                txt: 'Privacy Policy',
                onpress: () {
                  Get.toNamed('/PrivacyPolicyScreen');
                },
              ),
              10.verticalSpace,
              SettingContainer(
                txt: 'Terms Of Service',
                onpress: () {
                  Get.toNamed('/TermsOfServicesScreen');
                },
              ),
              10.verticalSpace,
              SettingContainer(
                txt: 'Phrasebook',
                onpress: () {
                  Get.toNamed('/PhraseBookScreen');
                },
              ),
              10.verticalSpace,
              SettingContainer(
                txt: 'Favorite',
                onpress: () {
                  Get.toNamed('/FavouriteScreen');
                },
              ),
              10.verticalSpace,
              SettingContainer(
                txt: 'Delete Account',
                onpress: () {
                  Get.bottomSheet(
                      barrierColor: Colors.black.withOpacity(0.8),
                      BottomSheetContainer());
                },
              ),
              SizedBox(height: 95),
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
        'Settings',
        style: GoogleFonts.poppins(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => _key.currentState!.openDrawer(),
        child: Image.asset(
          'assets/images/Path 4764.png',
          scale: 3.5,
        ),
      ),
      elevation: 1,
    );
  }
}
