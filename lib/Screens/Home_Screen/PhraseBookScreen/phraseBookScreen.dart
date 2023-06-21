import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/res/AppColors/AppColors.dart';

class PhraseBookScreen extends StatelessWidget {
  var arrayImg = [
    'assets/images/Group 11053.png',
    'assets/images/Group 11054.png',
    'assets/images/Group 11062.png',
    'assets/images/Group 11063.png',
    'assets/images/Group 11064.png',
    'assets/images/Group 11065.png',
    'assets/images/Group 11066.png',
    'assets/images/Group 11067.png',
    'assets/images/Group 11068.png',
  ];
  var arraytxt = [
    'Essentials',
    'While Traveling',
    'Help / Medical',
    'At the Hotel',
    'At the Restaurant',
    'At the Bar',
    'At the Store',
    'At the Work',
    'Time,Date,Numbers'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  itemCount: arrayImg.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 25,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed('/TravellingScreen');
                      },
                      child: Container(
                        width: 186.w,
                        height: 144.h,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 13),
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
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Image.asset(
                                    arrayImg[index].toString(),
                                    scale: 3.5,
                                  ),
                                  20.verticalSpace,
                                  Text(
                                    arraytxt[index].toString(),
                                    style: GoogleFonts.poppins(
                                        color: AppColors.FieldTxtlabelColor),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Phrasebook',
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
