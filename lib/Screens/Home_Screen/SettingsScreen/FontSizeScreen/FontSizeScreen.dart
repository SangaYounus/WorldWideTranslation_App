import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/FontSizeScreen/FontScreenContainer.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

class FontSizeScreen extends StatefulWidget {
  @override
  State<FontSizeScreen> createState() => _FontSizeScreenState();
}

class _FontSizeScreenState extends State<FontSizeScreen> {
  // var _lowervalue = 2.0;
  // var _uppervalue = 10.1;
  int _counter = 0;

  double _lowerValue = 50;
  double _upperValue = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Current Font Size',
                style: GoogleFonts.poppins(
                    color: AppColors.FieldTxtlabelColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            15.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '16 px',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600),
                ),
                Image.asset(
                  'assets/images/Icon feather-refresh-ccw.png',
                  scale: 4.5,
                ),
              ],
            ),
            20.verticalSpace,
            SelectFontContainer(),
            10.verticalSpace,
            FontWeightContainer(),
            10.verticalSpace,
            FontSizeContainer(),
            30.verticalSpace,
            Container(
              width: 382.w,
              height: 112.h,
              // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text(
                          'A',
                          style: TextStyle(
                              fontSize: 21.sp,
                              color: AppColors.FieldTxtlabelColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                        ),
                        child: Text(
                          'A',
                          style: TextStyle(
                              fontSize: 31.sp,
                              color: AppColors.FieldTxtlabelColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  RangeSliderFlutter(
                    values: [_lowerValue, _upperValue],
                    rangeSlider: true,

                    max: 2000,

                    handlerHeight: 30,
                    rightHandler: RangeSliderFlutterHandler(
                        foregroundDecoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: AppColors.ButtonGr2, width: 3),
                            shape: BoxShape.circle),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: AppColors.ButtonGr2, width: 3),
                            shape: BoxShape.circle)),
                    trackBar: RangeSliderFlutterTrackBar(
                      activeTrackBarHeight: 10,
                      inactiveTrackBarHeight: 10,
                      activeTrackBar: BoxDecoration(
                        // borderRadius: BorderRadius.circular(5),
                        color: AppColors.ButtonGr2,
                      ),
                      inactiveTrackBar: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),

                    min: 1,
                    // fontSize: 15,
                    // textBackgroundColor: Colors.red,
                    handler: RangeSliderFlutterHandler(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppColors.ButtonGr2, width: 3))),

                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      _lowerValue = lowerValue;
                      _upperValue = upperValue;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Font Size',
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
