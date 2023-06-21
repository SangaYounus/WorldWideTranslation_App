import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

 class SplashServices {

  void Splash(BuildContext ,context){

    Timer(Duration(seconds: 5), () => Get.toNamed('/PreLoginScreen'));

  }
  
}
