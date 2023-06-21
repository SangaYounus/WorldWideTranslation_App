import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/VoicesScreen/VoiceContainer.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbar.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbarbottomController.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Mask Group 2.png',
                scale: 4,
              ),
              30.horizontalSpace,
              Image.asset(
                'assets/images/Icon awesome-times-circle.png',
                scale: 6,
              ),
              30.horizontalSpace,
              Image.asset(
                'assets/images/Mask Group 3.png',
                scale: 4,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          VoiceContainer(
            txt: 'How are you?',
          ),
          SizedBox(
            height: 30,
          ),
          VoiceContainer(txt: 'Wie geht es dir?')
        ],
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Voice',
        style: GoogleFonts.poppins(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      ),
      automaticallyImplyLeading: false,
      leadingWidth: 125.w,
      elevation: 1,
      leading: Row(children: [
        GestureDetector(
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
              ),
            ),
          ),
        ),
        60.horizontalSpace,
        Image.asset(
          'assets/images/Icon metro-keyboard-voice-1.png',
          color: Colors.black,
          scale: 4.5,
        ),
      ]),
    );
  }
}
