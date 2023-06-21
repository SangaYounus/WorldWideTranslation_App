import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/Auth_Screens/Pre_Login_Screen/PreLogin_Button/Pre_Login_Button.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:world_wide_translation_app/res/components/Richtext/richtext.dart';
import 'package:world_wide_translation_app/res/components/RoundButton/RoundButton.dart';

class PreLoginScreen extends StatelessWidget {
  PreLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/images/Group 10.png',
                            scale: 4.5,
                          ),
                        ),
                        SizedBox(
                          height: 79.sp,
                        ),
                        Pre_LoginButton(
                          onpress: () {
                            Get.toNamed('/SignInScreen');
                          },
                          Txt: '  Login with Username ',
                          iconData: Icons.email,
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                        Pre_LoginButton(
                          onpress: () {
                            Get.toNamed('/HomeScreen');
                          },
                          Txt: ' Login with Facebook ',
                          iconData: Icons.facebook_rounded,
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                        Pre_LoginButton(
                          onpress: () {
                            Get.toNamed('/HomeScreen');
                          },
                          Txt: '  Login  with  Google ',
                          iconData: Icons.g_mobiledata,
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                        Pre_LoginButton(
                          onpress: () {
                            Get.toNamed('/HomeScreen');
                          },
                          Txt: '   Login   with  Apple ',
                          iconData: Icons.apple,
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/SignUpScreen');
                          },
                          child: richText(
                            text1: "Don't have an account? ",
                            text2: "Signup",
                          ),
                        ),
                      ]),
                )),
          ),
        ));
  }
}
