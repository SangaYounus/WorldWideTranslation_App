import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class FavouriteScreen extends StatelessWidget {
  var arrNames = [
    'Hello',
    'Excuse me ',
    'Instagram',
    'Goodbye',
    'How are you?',
    'Nice to meet you!',
    'Please',
    "I'm sorry",
    'Thank you',
    'Please',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            Expanded(
                child: ListView.separated(
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 24,
                  color: Colors.grey,
                );
              },
              itemCount: arrNames.length,
              itemBuilder: (context, index) {
                return Text(
                  arrNames[index].toString(),
                  style: TextStyle(
                    color: AppColors.FieldTxtlabelColor,
                    fontSize: 16.sp,
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Favourite',
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
