import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:world_wide_translation_app/res/components/Address_Field/Address_Field.dart';
import 'package:world_wide_translation_app/res/components/ProfilE_Text_Field/Profile_TextField.dart';
import 'package:world_wide_translation_app/res/components/RoundButton/RoundButton.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Image.asset(
              'assets/images/Path 4763.png',
              scale: 3.5,
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(clipBehavior: Clip.none, children: [
                          GestureDetector(
                            onTap: () {
                              getGalleryImage();
                            },
                            child: Container(
                              width: 115.w,
                              height: 160.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.ButtonGr2, width: 4),
                                  shape: BoxShape.circle),
                              child: _image != null
                                  ? Image.file(_image!.absolute)
                                  : Container(
                                      width: 70.w,
                                      height: 70.h,
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        'assets/images/Ellipse 68.png',
                                      ),
                                    ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              getGalleryImage();
                            },
                            child: Container(
                              child: Image.asset(
                                'assets/images/Group 11015.png',
                                height: 156,
                                width: 130,
                                alignment: Alignment.bottomRight,
                                scale: 4.5,
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    topText('Full Name'),
                    5.verticalSpace,
                    ProfileText_Field(
                      hint: 'Enter the name',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    topText('Phone Number'),
                    5.verticalSpace,
                    ProfileText_Field(
                      hint: '123 456 7890',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    topText('Address'),
                    5.verticalSpace,
                    Address_field(),
                    SizedBox(
                      height: 40,
                    ),
                    RoundButton(title: 'Create Profile', onpress: () {})
                  ])),
            )));
  }

  Align topText(
    final String txt,
  ) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        txt,
        style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.FieldTxtlabelColor),
      ),
    );
  }
}
