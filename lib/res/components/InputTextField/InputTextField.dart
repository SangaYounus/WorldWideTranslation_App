import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController myController;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmitted;
  final FormFieldValidator onValidator;

  final TextInputType keyBoardType;
  final String hint;
  final bool obscuretext;
  final bool enable, autofocus;

  const InputTextField({
    Key? key,
    required this.myController,
    required this.focusNode,
    required this.onFieldSubmitted,
    required this.onValidator,
    required this.keyBoardType,
    required this.hint,
    required this.obscuretext,
    this.autofocus = false,
    this.enable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextFormField(
          controller: myController,
          focusNode: focusNode,
          obscureText: obscuretext,
          onFieldSubmitted: onFieldSubmitted,
          validator: onValidator,
          keyboardType: keyBoardType,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.FieldTxtlabelColor),
          decoration: InputDecoration(
            hintText: hint,
            enabled: enable,
            contentPadding: EdgeInsets.all(15),
            hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 0,
              color: AppColors.hintColor.withOpacity(0.8),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textFieldDefaultFocus),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.BorderColor),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.alertColor),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
          )),
    );
  }
}
