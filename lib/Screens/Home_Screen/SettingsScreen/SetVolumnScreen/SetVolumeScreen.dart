import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class SetVolumnScreen extends StatefulWidget {
  const SetVolumnScreen({super.key});

  @override
  State<SetVolumnScreen> createState() => _SetVolumnScreenState();
}

class _SetVolumnScreenState extends State<SetVolumnScreen> {
  double _lowerValue = 50;
  double _upperValue = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 382.w,
              height: 112.h,
              padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 15.sp),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Set Volume' + '  30',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.FieldTxtlabelColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  RangeSliderFlutter(
                    values: [_lowerValue, _upperValue],
                    rangeSlider: true,
                    // tooltip: RangeSliderFlutterTooltip(
                    //   alwaysShowTooltip: false,
                    // ),
                    max: 2000,
                    // textPositionTop: -100,
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

                    min: 0,
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
        'Set Volume',
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
