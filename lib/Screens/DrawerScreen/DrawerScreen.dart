import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:world_wide_translation_app/Screens/DrawerScreen/DrawerListTile/DrawerListTILE.dart';
import 'package:world_wide_translation_app/Screens/DrawerScreen/DrawerlogoutBtn/DrawerlogOutBtn.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbar.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbarbottomController.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/Group 11989.png',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 85.h,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(children: [
                        Image.asset(
                          'assets/images/Group 11988.png',
                          scale: 5,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "James William",
                                style: GoogleFonts.poppins(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.headingTextColor,
                                ),
                              ),
                              Text(
                                "jameswilliam@example.com",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColors.subtitleTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                DrawerListtile(
                  onpress: () {
                    final bottomcontroller = Get.put(BottomController());
                    bottomcontroller.navBarChange(2);
                    Get.to(() => BottomNavBar());
                  },
                  img: 'assets/images/Icon material-text-fields.png',
                  txt: 'Text',
                ),
                DrawerListtile(
                  onpress: () {
                    final bottomcontroller = Get.put(BottomController());
                    bottomcontroller.navBarChange(0);
                    Get.to(() => BottomNavBar());
                  },
                  img: 'assets/images/Icon material-photo-camera.png',
                  txt: 'Camera',
                ),
                DrawerListtile(
                  onpress: () {
                    final bottomcontroller = Get.put(BottomController());
                    bottomcontroller.navBarChange(1);
                    Get.to(() => BottomNavBar());
                  },
                  img: 'assets/images/Icon metro-keyboard-voice.png',
                  txt: 'Voice',
                ),
                DrawerListtile(
                  onpress: () {
                    final bottomcontroller = Get.put(BottomController());
                    bottomcontroller.navBarChange(3);
                    Get.to(() => BottomNavBar());
                  },
                  img: 'assets/images/Icon awesome-user-alt.png',
                  txt: 'Profile',
                ),
                DrawerListtile(
                  onpress: () {
                    final bottomcontroller = Get.put(BottomController());
                    bottomcontroller.navBarChange(4);
                    Get.to(() => BottomNavBar());
                  },
                  img: 'assets/images/Icon ionic-ios-settings.png',
                  txt: 'Settings',
                ),
                DrawerListtile(
                  onpress: () {
                    Get.toNamed('/SubscriptionScreen');
                  },
                  img: 'assets/images/Icon ionic-ios-card.png',
                  txt: 'Subscription',
                ),
                15.verticalSpace,
                DrawerLogOutBtn(),
                20.verticalSpace,
              ],
            ),
          )),
    );
  }
}
