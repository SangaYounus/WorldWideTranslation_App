import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:world_wide_translation_app/res/components/EmailTextField/EmailTextField.dart';
import 'package:world_wide_translation_app/res/components/InputTextField/InputTextField.dart';
import 'package:world_wide_translation_app/res/components/PasswordTextField/PasswordTextField.dart';
import 'package:world_wide_translation_app/res/components/Richtext/richtext.dart';
import 'package:world_wide_translation_app/res/components/RoundButton/RoundButton.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
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
                        height: 30,
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/Group 10.png',
                          scale: 4.5,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      topText('Email ID'),
                      5.verticalSpace,
                      EmailTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      topText('Password'),
                      5.verticalSpace,
                      PasswordTextField(),
                      SizedBox(
                        height: 20,
                      ),
                      topText(' Repeat Password'),
                      5.verticalSpace,
                      PasswordTextField(),
                      16.verticalSpace,
                      Row(
                        children: [
                          Checkbox(
                              side: AlwaysActiveBorderSide(),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              activeColor: Colors.white,
                              checkColor: Colors.black,
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: 'I agree to the',
                              style: GoogleFonts.poppins(
                                  color: AppColors.TextColor),
                            ),
                            TextSpan(
                              text: ' Term Of Services',
                              style: GoogleFonts.poppins(
                                  color: AppColors.TextColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: ' &',
                              style: GoogleFonts.poppins(
                                color: AppColors.TextColor,
                              ),
                            ),
                            TextSpan(
                              text: ' Privacy',
                              style: GoogleFonts.poppins(
                                  color: AppColors.TextColor,
                                  fontWeight: FontWeight.w600),
                            )
                          ]))
                        ],
                      ),
                      56.verticalSpace,
                      RoundButton(
                          title: 'Sign Up',
                          onpress: () {
                            Get.toNamed('/OTPScreen');
                          }),
                      100.verticalSpace,
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/SignInScreen');
                        },
                        child: richText(
                          text1: "Already have an account? ",
                          text2: "Signin",
                        ),
                      ),
                      20.verticalSpace,
                    ]),
              )),
        ));
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
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(_) => const BorderSide(color: AppColors.ButtonGr2);
}
