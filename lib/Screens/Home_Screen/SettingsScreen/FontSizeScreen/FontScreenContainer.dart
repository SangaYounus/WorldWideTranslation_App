import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';

class SelectFontContainer extends StatefulWidget {
  const SelectFontContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectFontContainer> createState() => _SelectFontContainerState();
}

class _SelectFontContainerState extends State<SelectFontContainer> {
  final items = [
    'Arial',
    'Garamond',
    'Poppins',
    'Lato',
    'Georgia',
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 370.w,
      height: 48.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.FieldTxtlabelColor),
          borderRadius: BorderRadius.circular(20)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            hint: Text('Select Font'),
            elevation: 1,
            value: value,
            isExpanded: true,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() {
                  this.value = value;
                })),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style:
              GoogleFonts.poppins(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ));
  }
}

class FontWeightContainer extends StatefulWidget {
  const FontWeightContainer({super.key});

  @override
  State<FontWeightContainer> createState() => _FontWeightContainerState();
}

class _FontWeightContainerState extends State<FontWeightContainer> {
  final items = [
    'w.100',
    'w.200',
    'w.300',
    'w.400',
    'w.500',
  ];

  String? value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 370.w,
      height: 48.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.FieldTxtlabelColor),
          borderRadius: BorderRadius.circular(20)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            hint: Text('Font Weight'),
            elevation: 1,
            value: value,
            isExpanded: true,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() {
                  this.value = value;
                })),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style:
              GoogleFonts.poppins(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ));
  }
}

class FontSizeContainer extends StatefulWidget {
  const FontSizeContainer({super.key});

  @override
  State<FontSizeContainer> createState() => _FontSizeContainerState();
}

class _FontSizeContainerState extends State<FontSizeContainer> {
  final items = [
    '10',
    '20',
    '30',
    '40',
    '50',
  ];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: 370.w,
      height: 48.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.FieldTxtlabelColor),
          borderRadius: BorderRadius.circular(20)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            hint: Text('Font Size'),
            elevation: 1,
            value: value,
            isExpanded: true,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() {
                  this.value = value;
                })),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style:
              GoogleFonts.poppins(fontSize: 15.sp, fontWeight: FontWeight.w500),
        ));
  }
}
