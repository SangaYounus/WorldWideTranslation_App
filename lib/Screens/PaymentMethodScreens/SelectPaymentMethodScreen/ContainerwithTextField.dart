import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerwithTextField extends StatelessWidget {
  const ContainerwithTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382.w,
      height: 49.h,
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
      child: TextFormField(
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}