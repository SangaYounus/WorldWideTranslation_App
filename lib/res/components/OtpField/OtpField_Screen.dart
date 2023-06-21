import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class OtpField extends StatefulWidget {
  const OtpField({super.key});

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 50.h,
      decoration: BoxDecoration(),
      child: OTPTextField(
        outlineBorderRadius: 20,
        contentPadding: EdgeInsets.only(top: 40, bottom: 70),
        onChanged: (value) {
          setState(() {});
        },

        otpFieldStyle: OtpFieldStyle(
            backgroundColor: Colors.transparent,
            disabledBorderColor: AppColors.otpBorderColor,
            focusBorderColor: AppColors.otpBorderColor,
            borderColor: AppColors.otpBorderColor,
            enabledBorderColor: AppColors.otpBorderColor,
            errorBorderColor: AppColors.alertColor),

        length: 4,

        fieldWidth: 50.w,

        style: TextStyle(
          fontSize: 30,
        ),

        textFieldAlignment: MainAxisAlignment.spaceBetween,
        fieldStyle: FieldStyle.box,
        // onCompleted: (pin) {
        //   Get.toNamed("/OtpForgotPasswordScreen");
        //   print("Completed: " + pin);
        // },
      ),
    );
  }
}
