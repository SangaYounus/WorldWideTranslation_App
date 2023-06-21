import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/SubscriptionScreens/SibscriptionListTile.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class SubscriptionContainer extends StatelessWidget {
  const SubscriptionContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 427.h,
        width: 327.w,
        child: Stack(alignment: Alignment.center, children: [
          Container(
            height: 367.h,
            width: 329.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.r),
                color: AppColors.PkgContainer.withOpacity(0.6)),
          ),
          Positioned(
              bottom: 20,
              top: 20,
              right: 20,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed('/PaymentMethod');
                },
                child: Container(
                  height: 427.h,
                  width: 329.w,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(color: Colors.white, width: 0.5.w),
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xffFFFFFF)),
                  child: Column(children: [
                    Container(
                      width: 286.5.w,
                      height: 93.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            AppColors.ButtonGr1,
                            AppColors.ButtonGr2
                          ]),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r))),
                      child: Center(
                        child: Text(
                          'Gold Package',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    10.verticalSpace,
                    Column(children: [
                      SubscriptionListTILE(
                        txt:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do.',
                      ),
                      SubscriptionListTILE(
                        txt:
                            'Eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      ),
                      SubscriptionListTILE(
                        txt:
                            'Ut enim ad minim veniam, quis nostrud exercitation ullamco.',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 7),
                                    child: RichText(
                                      text: TextSpan(
                                          text: "\$",
                                          style: GoogleFonts.poppins(
                                              fontSize: 20.sp,
                                              color: Color(0xff004DF2),
                                              fontWeight: FontWeight.w600)),
                                    ),
                                  ),
                                  7.horizontalSpace,
                                  RichText(
                                    text: TextSpan(
                                        text: '9.99',
                                        style: GoogleFonts.poppins(
                                            color: Color(
                                              0xff808285,
                                            ),
                                            fontSize: 60.sp,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                ]),
                          ]),
                      Text(
                        'Per Months',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp),
                      )
                    ])
                  ]),
                ),
              ))
        ]));
  }
}
