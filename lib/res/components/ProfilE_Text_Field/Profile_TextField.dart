import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class ProfileText_Field extends StatelessWidget {
  final String hint;
  const ProfileText_Field({
    Key? key,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldDefaultFocus),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        contentPadding: EdgeInsets.all(10),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 0,
          color: AppColors.hintColor.withOpacity(0.8),
        ),
      ),
    );
  }
}
