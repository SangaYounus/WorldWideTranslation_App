import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class TravellingScreen extends StatelessWidget {
  var arrNames = [
    'Where is the train station?',
    'Where is the subway?',
    'Where is the bus station?',
    'Where is the nice bar?',
    'Where is the nice coffee place?',
    'Where is a good restaurant?',
    'Where is the museum?',
    'Where is the bus station?',
    'Where is the nice bar?',
    'Where is the subway?',
    'Where is the train station?'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.verticalSpace,
                Text(
                  'Where is the airport?',
                  style: TextStyle(
                      color: AppColors.FieldTxtlabelColor, fontSize: 18.sp),
                ),
                Text(
                  'Where is the airport?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w500),
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.red,
                      size: 30,
                    ),
                    Icon(
                      Icons.copy,
                      color: AppColors.FieldTxtlabelColor,
                      size: 30,
                    ),
                    Image.asset(
                      'assets/images/Icon metro-volume-high.png',
                      scale: 3,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
                17.verticalSpace,
                Divider(
                  color: Colors.grey,
                ),
                Expanded(
                    child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 24,
                      color: Colors.grey,
                    );
                  },
                  itemCount: arrNames.length,
                  itemBuilder: (context, index) {
                    return Text(
                      arrNames[index].toString(),
                      style: TextStyle(
                        color: AppColors.FieldTxtlabelColor,
                        fontSize: 17.sp,
                      ),
                    );
                  },
                )),
                // SizedBox(
                //   height: 20,
                // ),
              ]),
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'While Traveling',
          style: GoogleFonts.poppins(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 1,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Image.asset(
            'assets/images/Path 4763.png',
            scale: 3.5,
          ),
        ));
  }
}
