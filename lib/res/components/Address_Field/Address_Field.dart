import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class Address_field extends StatelessWidget {
  const Address_field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            size: 30,
            color: AppColors.FieldTxtlabelColor,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textFieldDefaultFocus),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: '3995 Marshville Road',
          hintStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 0,
            color: AppColors.hintColor.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
