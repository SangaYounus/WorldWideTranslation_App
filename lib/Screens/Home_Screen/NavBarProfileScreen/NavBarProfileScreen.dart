import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:world_wide_translation_app/Screens/DrawerScreen/DrawerScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/NavBarProfileScreen/ProfileImageWithCamera.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class NavBarProfileScreen extends StatefulWidget {
  @override
  State<NavBarProfileScreen> createState() => _NavBarProfileScreenState();
}

class _NavBarProfileScreenState extends State<NavBarProfileScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool isSwitched = true;
  File? _image;
  final picker = ImagePicker();

  Future getGalleryImage() async {
    final PickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    setState(() {
      if (PickedFile != null) {
        _image = File(PickedFile.path);
      } else {
        print('no image picked');
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => _key.currentState!.openDrawer(),
          child: Image.asset(
            'assets/images/Path 4764.png',
            scale: 3.5,
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/UpdateProfileScreen');
              },
              child: Icon(
                Icons.edit,
                color: AppColors.FieldTxtlabelColor,
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
                width: 382.w,
                height: 475.h,
                padding:
                    EdgeInsets.symmetric(horizontal: 10.sp, vertical: 15.sp),
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
                child: Column(children: [
                  ProfileimgWithCamera(),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.phone,
                        color: AppColors.ButtonGr1,
                      ),
                      Text(
                        '123 456 7890',
                        style: GoogleFonts.poppins(
                            color: AppColors.FieldTxtlabelColor),
                      ),
                      Icon(
                        Icons.location_on,
                        color: AppColors.ButtonGr1,
                      ),
                      Text(
                        '3995 Marshville Road',
                        style: GoogleFonts.poppins(
                            color: AppColors.FieldTxtlabelColor),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  Container(
                      width: 352.w,
                      height: 62.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 13),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/SettingSelectLangScreen');
                    },
                    child: Container(
                      width: 352.w,
                      height: 60.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
                      child: Text(
                        'Select Language',
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            color: AppColors.FieldTxtlabelColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ]),
              ),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
