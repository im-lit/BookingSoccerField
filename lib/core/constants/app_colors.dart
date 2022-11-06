import 'package:flutter/material.dart';

/**
 * Define colors
 */

class AppColors {
  //static const Color thirdColor = Color(0xffABC4FF);
  static const Color blackGrey = Color(0xff777777);
  //static const Color secondColor = Color(0xffEDF2FB);
  static const Color textColor = Color(0xff353535);
  static const Color lightBlue = Color(0xffD7E3FC);
  static const Color greyText = Color(0xff888686);
  static const Color lightGrey = Color(0xffB2B6BD);
  //static const Color greyBackground = Color(0xff336633);
  static const Color greySearch = Color(0xffF3F4F5);
  static const Color red = Color(0xffFE0000);
  static const Color primaryColor = Color(0xff6155CC);
  static const Color secondColor = Color(0xff8F67E8);
  static const Color yellowColor = Color(0xffFE9C5E);
  static const Color dividerColor = Color.fromARGB(255, 146, 155, 175);
  static const Color text1Color = Color(0xff323B4B);
  static const Color subTitleColor = Color(0xff838383);
  static const Color backgroundScaffoldColor = Color(0xffF2F2F2);
  static const Color greenColor = Color(0xff008000);
  static const Color blueColor = Color(0xffF2831D);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      AppColors.blackGrey,
      AppColors.textColor,
    ],
  );
}
