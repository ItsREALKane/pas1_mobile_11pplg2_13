import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_13/screen/HomeScreen.dart';

class ResponsiveContoller extends GetxController {
  var screenWidth = 0.0.obs;

  void updateScreenWidht(double width){
    screenWidth.value = width;
    print('size nya' + screenWidth.value.toString());
  }

//ini aku balik soalnya error
  bool isTablet() => screenWidth.value < 361;
  bool isMobile() => screenWidth.value >= 800 && screenWidth.value < 1200;
}