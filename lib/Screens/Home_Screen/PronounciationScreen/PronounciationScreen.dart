import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/PronounciationScreen/PronounciationContainer.dart';

class PronounciationScreen extends StatelessWidget {
  PronounciationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            PronounciationContainer(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pronunciation',
          style: GoogleFonts.poppins(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 1,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Image.asset(
            'assets/images/Path 4763.png',
            scale: 3.5,
          ),
        ));
  }
}
