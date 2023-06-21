import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/PaymentMethodScreens/SelectPaymentMethodScreen/ContainerwithTextField.dart';
import 'package:world_wide_translation_app/Screens/PaymentMethodScreens/SelectPaymentMethodScreen/PaymentContainer.dart';
import 'package:world_wide_translation_app/Screens/PaymentMethodScreens/SelectPaymentMethodScreen/rowContainer.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:world_wide_translation_app/res/components/RoundButton/RoundButton.dart';

class SelectPaymentMethodScreen extends StatelessWidget {
  const SelectPaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Card',
                style: GoogleFonts.poppins(
                    color: AppColors.FieldTxtlabelColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp),
              ),
              16.verticalSpace,
              Row(
                children: [
                  PaymentContainer(
                    img: 'assets/images/Group 1718.png',
                  ),
                  15.horizontalSpace,
                  PaymentContainer(
                    img: 'assets/images/Group 1717.png',
                  ),
                  15.horizontalSpace,
                  PaymentContainer(
                    img: 'assets/images/Group 1720.png',
                  ),
                ],
              ),
              20.verticalSpace,
              topText('Card Holder'),
              5.verticalSpace,
              ContainerwithTextField(),
              16.verticalSpace,
              topText('Card Number'),
              5.verticalSpace,
              ContainerwithTextField(),
              18.verticalSpace,
              Row(
                children: [
                  topText('Exp Date'),
                  SizedBox(
                    width: 130,
                  ),
                  topText('CVV'),
                ],
              ),
              5.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RowContainer(),
                  RowContainer(),
                ],
              ),
              100.verticalSpace,
              RoundButton(
                  title: 'Add Now',
                  onpress: () {
                    Get.back();
                  }),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
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
}

Align topText(
  final String txt,
) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      txt,
      style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.FieldTxtlabelColor),
    ),
  );
}
