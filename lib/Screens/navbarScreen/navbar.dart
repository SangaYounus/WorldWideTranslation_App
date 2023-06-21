import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/DrawerScreen/DrawerScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/CameraScreen/CameraScreen.dart';

import 'package:world_wide_translation_app/Screens/Home_Screen/Home_Screen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/NavBarProfileScreen/NavBarProfileScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/SettingsScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/VoicesScreen/VoiceScreen.dart';

import 'package:world_wide_translation_app/Screens/navbarScreen/navbarbottomController.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final bottomcontroller = Get.put(BottomController());
  int pageIndex = 0;

  final pages = [
    CameraScreen(),
    VoiceScreen(),
    HomeScreen(),
    NavBarProfileScreen(),
    SettingsScreen(),
  ];
  void _onItemTapped(int index) {
    bottomcontroller.navBarChange(index);
  }

  @override
  Widget build(BuildContext context) {
    double res_height = MediaQuery.of(context).size.height;
    double res_width = MediaQuery.of(context).size.width;

    return Container(
      // decoration:
      //     BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      width: double.infinity,
      child: Scaffold(
        drawer: DrawerScreen(),
        resizeToAvoidBottomInset: false,
        extendBody: true,
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.white,
        body: GetBuilder<BottomController>(
          builder: (_) => pages[bottomcontroller.navigationBarIndexValue],
        ),
        bottomNavigationBar: GetBuilder<BottomController>(
          builder: (_) => buildMyNavBar(context),
        ),
        floatingActionButton: Container(
          width: 65.w,
          height: 70.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.ButtonGr1,
                AppColors.ButtonGr2,
              ],
            ),
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            onPressed: () {
              setState(() {
                _onItemTapped(2);
              });
            },
            child: Container(
              decoration: BoxDecoration(),
              child: Icon(
                Icons.text_fields,
                size: 30,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  buildMyNavBar(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.ButtonGr1,
                  AppColors.ButtonGr2,
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Get.to(() => MainScreen());
                      },
                      child: navBarIconWithTitle(
                          onpress: () {
                            setState(() {
                              _onItemTapped(0);
                            });
                          },
                          txt: 'Camera',
                          iconData: Icons.camera_alt,
                          bottomcontroller: bottomcontroller),
                    ),
                    navBarIconWithTitle(
                        onpress: () {
                          setState(() {
                            _onItemTapped(1);
                          });
                        },
                        txt: 'Voice',
                        iconData: Icons.keyboard_voice,
                        bottomcontroller: bottomcontroller),
                    SizedBox(
                      width: 60.w,
                    ),
                    navBarIconWithTitle(
                        onpress: () {
                          setState(() {
                            _onItemTapped(3);
                          });
                        },
                        txt: 'Profile',
                        iconData: Icons.person,
                        bottomcontroller: bottomcontroller),
                    navBarIconWithTitle(
                        onpress: () {
                          setState(() {
                            _onItemTapped(4);
                          });
                        },
                        txt: 'Setting',
                        iconData: Icons.settings,
                        bottomcontroller: bottomcontroller),
                  ]),
            ),
          ),
        ));
  }
}

class navBarIconWithTitle extends StatelessWidget {
  final String txt;
  final IconData iconData;
  VoidCallback onpress;
  final BottomController bottomcontroller;

  navBarIconWithTitle(
      {super.key,
      required this.onpress,
      required this.txt,
      required this.iconData,
      required this.bottomcontroller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onpress,
          child: Container(
            width: 22.5.w,
            height: 22.5.h,
            child: Icon(
              iconData,
              color: bottomcontroller.navigationBarIndexValue == 0
                  ? Colors.white.withOpacity(0.5)
                  : Color(0xff80c1fa),
            ),
          ),
        ),
        5.verticalSpace,
        Text(
          txt,
          style: GoogleFonts.poppins(
            fontSize: 10.sp,
            color: bottomcontroller.navigationBarIndexValue == 0
                ? Colors.white.withOpacity(0.5)
                : Color(0xff80c1fa),
          ),
        )
      ],
    );
  }
}
