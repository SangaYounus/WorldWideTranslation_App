import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/DrawerScreen/DrawerScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/Components/Home_Body/Home_Body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _key,
      drawer: DrawerScreen(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            _key.currentState!.openDrawer();
            // Scaffold.of(context).openDrawer();
          },
          child: Image.asset(
            'assets/images/Path 4764.png',
            scale: 3.5,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed('/VoiceScreen');
            },
            child: Image.asset(
              'assets/images/Icon metro-keyboard-voice.png',
              scale: 4.5,
            ),
          ),
        ],
        elevation: 1,
      ),
      body: HomeBody(),
    );
  }
}
