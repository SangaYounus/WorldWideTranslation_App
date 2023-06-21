import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class PaymentListile extends StatelessWidget {
  final String txt1;
  final String txt2;
  const PaymentListile({
    Key? key,
    required this.txt1,
    required this.txt2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        txt1,
        style: GoogleFonts.poppins(
            color: AppColors.FieldTxtlabelColor, fontSize: 18.sp),
      ),
      trailing: Text(
        txt2,
        style: GoogleFonts.poppins(
            color: AppColors.FieldTxtlabelColor,
            fontWeight: FontWeight.bold,
            fontSize: 19.sp),
      ),
    );
  }
}