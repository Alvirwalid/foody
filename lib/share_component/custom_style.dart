

import 'package:flutter/material.dart';
import 'package:foody/constant/color_path.dart';
import 'package:foody/constant/other_constant.dart';

class CustomStyle{

  static TextStyle kCustomTextStyle(
      {
        double? fontSize,
        FontWeight? fontWeight = FontWeight.normal,
        Color color = ColorPath.kGreyBlack,double? height,

        TextDecoration? decoration}) =>
      TextStyle(
          fontSize: fontSize ?? OtherConstant.kMediumTextSize,
          fontWeight: fontWeight,
          color: color,
          decoration: decoration,
          height: height
      );
}