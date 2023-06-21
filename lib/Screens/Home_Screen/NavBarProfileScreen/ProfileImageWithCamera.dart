import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class ProfileimgWithCamera extends StatefulWidget {
  const ProfileimgWithCamera({
    super.key,
  });

  @override
  State<ProfileimgWithCamera> createState() => _ProfileimgWithCameraState();
}

class _ProfileimgWithCameraState extends State<ProfileimgWithCamera> {
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
    return Row(
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
                  border: Border.all(color: AppColors.ButtonGr2, width: 4),
                  shape: BoxShape.circle),
              child: _image != null
                  ? Image.file(_image!.absolute)
                  : Image.asset(
                      'assets/images/Ellipse 68.png',
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
    );
  }
}
