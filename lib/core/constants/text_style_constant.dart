import 'dart:ffi';

import 'package:bookingsoccerfeild/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class FontFamily {
  static final sen = 'Sen';
}

class TextStyles {
  TextStyles(this.context);
  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
    fontSize: 14,
    color: AppColors.text1Color,
    fontWeight: FontWeight.w400,
    height: 16 / 14,
  );
}

extension ExtendedTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle get italic {
    return copyWith(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get fontHeader {
    return copyWith(fontSize: 22, height: 22 / 20);
  }

  TextStyle get fontCaption {
    return copyWith(fontSize: 12, height: 12 / 10);
  }

  TextStyle get semibold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle get text1Color {
    return copyWith(color: AppColors.text1Color);
  }

  TextStyle get primaryTextColor {
    return copyWith(color: AppColors.primaryColor);
  }

  TextStyle get whiteTextColor {
    return copyWith(color: Colors.white);
  }

  TextStyle get subTitleTextColor {
    return copyWith(color: AppColors.subTitleColor);
  }

  TextStyle setColor(Color color) {
    return copyWith(color: color);
  }

  TextStyle setTextSize(double size) {
    return copyWith(fontSize: size);
  }
}

class AppStyles {
  static TextStyle h1 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 109.66, color: Colors.white);
  static TextStyle h2 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 67.77, color: Colors.white);
  static TextStyle h3 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 41.89, color: Colors.white);
  static TextStyle h4 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 25.89, color: Colors.white);
  static TextStyle h5 =
      TextStyle(fontFamily: FontFamily.sen, fontSize: 16, color: Colors.white);
  static TextStyle h6 = TextStyle(
      fontFamily: FontFamily.sen, fontSize: 9.89, color: Colors.white);
}
