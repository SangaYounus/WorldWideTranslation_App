import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/PaymentMethodScreens/PaymentListtile.dart';
import 'package:world_wide_translation_app/Screens/PaymentMethodScreens/SelectPaymentMethodScreen/BottomSheetContainer1.dart';

import 'package:world_wide_translation_app/res/components/RoundButton/RoundButton.dart';

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 382.w,
                height: 237.h,
                child: Image.asset('assets/images/Group 3005.png'),
              ),
              PaymentListile(
                txt1: 'Price',
                txt2: '\$19.99',
              ),
              PaymentListile(
                txt1: 'Tax',
                txt2: '\$0.0',
              ),
              PaymentListile(
                txt1: 'Total',
                txt2: '\$19.99',
              ),
              110.verticalSpace,
              RoundButton(
                  title: 'Confirm',
                  onpress: () {
                    Get.bottomSheet(
                        barrierColor: Colors.black.withOpacity(0.8),
                        BottomSheetContainer1());
                  })
            ],
          ),
        ),
      ),
    );
  }
}

AppBar buildAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      'Select Payment Method',
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
    actions: [
      GestureDetector(
        onTap: () {
          Get.toNamed('/SelectPaymentMethodScreen');
        },
        child: Image.asset(
          'assets/images/Group 104.png',
          scale: 3.5,
        ),
      )
    ],
    elevation: 1,
  );
}
