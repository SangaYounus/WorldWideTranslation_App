import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/integrateWithApps/AppListTile.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class IntegrateWithAppScreen extends StatelessWidget {
  const IntegrateWithAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            AppListTile(
              img: 'assets/images/Group 11044.png',
              txt: 'Whatsapp',
            ),
            15.verticalSpace,
            AppListTile(
              img: 'assets/images/Group 11043.png',
              txt: 'Facebook',
            ),
            15.verticalSpace,
            AppListTile(
              img: 'assets/images/Group 11041.png',
              txt: 'Instagram',
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Integrate With Apps',
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
