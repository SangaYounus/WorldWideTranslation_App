import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/SubscriptionScreens/SibscriptionListTile.dart';
import 'package:world_wide_translation_app/Screens/SubscriptionScreens/SubscriptionContainer.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(children: [
                  SubscriptionContainer(),
                  26.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 53.w,
                        height: 9.h,
                        decoration: BoxDecoration(
                            color: Color(0xff004DF2),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      4.horizontalSpace,
                      Icon(
                        Icons.circle_outlined,
                        size: 10,
                        color: Colors.black,
                      ),
                      4.horizontalSpace,
                      Icon(
                        Icons.circle_outlined,
                        size: 10,
                        color: Colors.black,
                      )
                    ],
                  ),
                ])),
          ),
        ));
  }
}

AppBar buildAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      'Subscription Packages',
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
