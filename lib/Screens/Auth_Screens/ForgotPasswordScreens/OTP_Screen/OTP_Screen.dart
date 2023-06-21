import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:world_wide_translation_app/res/components/EmailTextField/EmailTextField.dart';
import 'package:world_wide_translation_app/res/components/OtpField/OtpField_Screen.dart';
import 'package:world_wide_translation_app/res/components/Richtext/richtext.dart';
import 'package:world_wide_translation_app/res/components/RoundButton/RoundButton.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Image.asset(
              'assets/images/Path 4763.png',
              scale: 3.5,
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/Group 10.png',
                        scale: 4.5,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    OtpField(),
                    SizedBox(
                      height: 70,
                    ),
                    RoundButton(
                        title: 'Continue',
                        onpress: () {
                          Get.toNamed('/PasswordScreen');
                        }),
                    150.verticalSpace,
                    richText(
                      text1: "Don't received code? ",
                      text2: "Resend",
                    ),
                  ]))),
        ));
  }
}
