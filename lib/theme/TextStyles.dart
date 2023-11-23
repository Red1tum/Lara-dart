import 'package:flutter/material.dart';
import 'package:lara/resources/Fonts.dart';
import 'package:lara/theme/Colors.dart';

class TextStyles {
  static TextStyle primary(double? fontSize) {
    return TextStyle(
      color: AppColor.primaryText,
      fontSize: fontSize,
      fontFamily: Fonts.SfProText,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.40,
    );
  }

  static TextStyle primaryBold(double? fontSize) {
    return TextStyle(
      color: AppColor.primaryText,
      fontSize: fontSize,
      fontFamily: Fonts.SfProText,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.70,
    );
  }
  
  // I struggled with name for a few minutes
  // and couldn't come up with something better
  // than this... because it's only used in username...
  static TextStyle userName(double? fontSize) {
    return TextStyle(
      color: AppColor.primaryText,
      fontSize: fontSize,
      fontFamily: Fonts.SfProDisplay,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle secondary(double? fontSize) {
    return TextStyle(
      color: AppColor.secondaryText,
      fontSize: fontSize,
      fontFamily: Fonts.SfProText,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.42,
    );
  }
}
