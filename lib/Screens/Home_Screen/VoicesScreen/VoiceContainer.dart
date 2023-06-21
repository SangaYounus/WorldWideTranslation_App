import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoiceContainer extends StatelessWidget {
  final String txt;
  const VoiceContainer({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 382.w,
        height: 178.h,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
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
            Text(
              txt,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp),
            ),
            20.verticalSpace,
            Row(
              children: [
                Image.asset(
                  'assets/images/Group 11019.png',
                  scale: 4.5,
                ),
                25.horizontalSpace,
                Image.asset(
                  'assets/images/Icon metro-volume-high.png',
                  scale: 4.5,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
