import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbar.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbarbottomController.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:world_wide_translation_app/res/components/EmailTextField/EmailTextField.dart';
import 'package:world_wide_translation_app/res/components/PasswordTextField/PasswordTextField.dart';
import 'package:world_wide_translation_app/res/components/Richtext/richtext.dart';
import 'package:world_wide_translation_app/res/components/RoundButton/RoundButton.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                        height: 50,
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
                      Form(key: _formKey, child: EmailTextField()),
                      SizedBox(
                        height: 20,
                      ),
                      topText('Password'),
                      5.verticalSpace,
                      Form(child: PasswordTextField()),
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
                          Text(
                            'Remember Me',
                            style:
                                GoogleFonts.poppins(color: AppColors.TextColor),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () => Get.toNamed('/EnterEmailIdScreen'),
                              child: Text('Forgot Password?',
                                  style: GoogleFonts.poppins(
                                    color: AppColors.TextColor,
                                    decoration: TextDecoration.underline,
                                  )),
                            ),
                          )
                        ],
                      ),
                      56.verticalSpace,
                      RoundButton(
                          title: 'Sign In',
                          onpress: () {
                            if (_formKey.currentState!.validate()) ;
                            final bottomcontroller =
                                Get.put(BottomController());
                            bottomcontroller.navBarChange(2);
                            Get.to(() => BottomNavBar());
                          }),
                      100.verticalSpace,
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/SignUpScreen');
                        },
                        child: richText(
                          text1: "Don't have an account? ",
                          text2: "Signup",
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
