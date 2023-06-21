import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbar.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbarbottomController.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _image;
  final picker = ImagePicker();

  Future getCameraImage() async {
    final PickedFile =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 100);
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            final bottomcontroller = Get.put(BottomController());
            bottomcontroller.navBarChange(2);
            Get.to(() => BottomNavBar());
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              width: 28.w,
              height: 28.h,
              child: Image.asset(
                'assets/images/Path 4763.png',
                scale: 3,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                getCameraImage();
              },
              child: Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(),
                  child: _image != null
                      ? Image.file(_image!.absolute)
                      : Center(
                          child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 75,
                        )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
