import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:world_wide_translation_app/Screens/Auth_Screens/ForgotPasswordScreens/EnterEmailID_Screen/EnterEmailID_Screen.dart';
import 'package:world_wide_translation_app/Screens/Auth_Screens/ForgotPasswordScreens/OTP_Screen/OTP_Screen.dart';
import 'package:world_wide_translation_app/Screens/Auth_Screens/ForgotPasswordScreens/PasswordScreen/Password_Screen.dart';
import 'package:world_wide_translation_app/Screens/Auth_Screens/Pre_Login_Screen/Pre_LoginScreen.dart';
import 'package:world_wide_translation_app/Screens/Auth_Screens/ProfileScreen/ProfileScreen.dart';
import 'package:world_wide_translation_app/Screens/Auth_Screens/SignInScreen/SignInScreen.dart';
import 'package:world_wide_translation_app/Screens/Auth_Screens/SignUp_Screen/SignUp_Screen.dart';
import 'package:world_wide_translation_app/Screens/DrawerScreen/DrawerScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/CameraScreen/CameraScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/Home_Screen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/NavBarProfileScreen/NavBarProfileScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/NavBarProfileScreen/UpdateProfileScreen/UpdateProfileScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/PhraseBookScreen/phraseBookScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/PronounciationScreen/PronounciationScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SelectLanguageScreen/SelectLanguageScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/FavouriteScreen/FavouriteScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/FontSizeScreen/FontSizeScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/PrivacyPolicyScreen/PrivacyPolicyScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/SetVolumnScreen/SetVolumeScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/SettingLanguageScreen/SettingLanguageScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/SettingsScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/Term&ServicesScreen/Term&ServicesScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/SettingsScreen/integrateWithApps/IntegrateWithAppsScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/TravellingScreen/TravellingScreen.dart';
import 'package:world_wide_translation_app/Screens/Home_Screen/VoicesScreen/VoiceScreen.dart';
import 'package:world_wide_translation_app/Screens/PaymentMethodScreens/PaymentMethodScreen.dart';
import 'package:world_wide_translation_app/Screens/PaymentMethodScreens/SelectPaymentMethodScreen/SelectPaymentMethodScreen.dart';
import 'package:world_wide_translation_app/Screens/SplashScreen/SplashScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_wide_translation_app/Screens/SubscriptionScreens/SubscriptionScreen.dart';
import 'package:world_wide_translation_app/Screens/navbarScreen/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',

          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
              appBarTheme: AppBarTheme(
                  toolbarTextStyle: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
              primarySwatch: Colors.blue,
              textTheme: GoogleFonts.poppinsTextTheme()),

          home:SplashScreen(),
          // initialRoute: '/SignInScreen',
          getPages: [
            GetPage(name: '/SplashScreen', page: (() => SplashScreen())),
            GetPage(name: '/PreLoginScreen', page: (() => PreLoginScreen())),
            GetPage(name: '/SignInScreen', page: (() => SignInScreen())),
            GetPage(name: '/SignUpScreen', page: (() => SignUpScreen())),
            GetPage(
                name: '/EnterEmailIdScreen',
                page: (() => EnterEmailIdScreen())),
            GetPage(name: '/OTPScreen', page: (() => OTPScreen())),
            GetPage(name: '/PasswordScreen', page: (() => PasswordScreen())),
            GetPage(name: '/ProfileScreen', page: (() => ProfileScreen())),
            GetPage(name: '/HomeScreen', page: (() => HomeScreen())),
            GetPage(name: '/BottomNavBar', page: (() => BottomNavBar())),
            GetPage(name: '/CameraScreen', page: (() => CameraScreen())),
            GetPage(name: '/LanguageScreen', page: (() => LanguageScreen())),
            GetPage(name: '/VoiceScreen', page: (() => VoiceScreen())),
            GetPage(
                name: '/PronounciationScreen',
                page: (() => PronounciationScreen())),
            GetPage(
                name: '/PhraseBookScreen', page: (() => PhraseBookScreen())),
            GetPage(
                name: '/TravellingScreen', page: (() => TravellingScreen())),
            GetPage(name: '/SettingsScreen', page: (() => SettingsScreen())),
            GetPage(
                name: '/PrivacyPolicyScreen',
                page: (() => PrivacyPolicyScreen())),
            GetPage(
                name: '/TermsOfServicesScreen',
                page: (() => TermsOfServicesScreen())),
            GetPage(
                name: '/SettingSelectLangScreen',
                page: (() => SettingSelectLangScreen())),
            GetPage(name: '/FontSizeScreen', page: (() => FontSizeScreen())),
            GetPage(name: '/SetVolumnScreen', page: (() => SetVolumnScreen())),
            GetPage(
                name: '/IntegrateWithAppScreen',
                page: (() => IntegrateWithAppScreen())),
            GetPage(name: '/FavouriteScreen', page: (() => FavouriteScreen())),
            GetPage(
                name: '/SubscriptionScreen',
                page: (() => SubscriptionScreen())),
            GetPage(name: '/PaymentMethod', page: (() => PaymentMethod())),
            GetPage(
                name: '/SelectPaymentMethodScreen',
                page: (() => SelectPaymentMethodScreen())),
            GetPage(
                name: '/NavBarProfileScreen',
                page: (() => NavBarProfileScreen())),
            GetPage(
                name: '/UpdateProfileScreen',
                page: (() => UpdateProfileScreen())),
            GetPage(name: '/DrawerScreen', page: (() => DrawerScreen()))
          ],
        );
      },
    );
  }
}
