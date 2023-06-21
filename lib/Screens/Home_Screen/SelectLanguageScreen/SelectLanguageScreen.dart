import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SelectLanguageScreen/LanguageBody.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppbar(),
    body: LanguageBody(),);
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Select Language',
        style: GoogleFonts.poppins(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
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
