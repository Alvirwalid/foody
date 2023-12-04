import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherConstant{
  //Padding
  static double kLargePadding = 16.0.sp;
  static  double kRegularPadding = 8.0.sp;
  static  double kSmallPadding = 4.0.sp;

  //Radius
  static  double kLargeRadius = 30.0.sp;
  static  double kRegularRadius = 10.0.sp;
  static  double kSmallRadius = 5.0.sp;
  static  double kMediumRadius = 20.0.sp;

  //Text Size
  static  double kExtraSmallTextSize = 8.0.sp;
  static  double kVerySmallTextSize = 10.0.sp;
  static  double kSmallTextSize = 12.0.sp;
  static  double kMediumTextSize = 14.0.sp;
  static  double kRegularTextSize = 16.0.sp;
  static  double kLargeTextSize = 20.0.sp;
  static  double kHeadlineTextSize = 28.0.sp;


  //Other size
  static  double kDividerHeight = 28.0.h;
  static  double kDefaultImageHeight = 96.0.h;
  static  double kLargeImageHeight = 120.0.h;
  static  double kBigIconSize = 35.0.h;
  static  double kLargeIconSize = 40.0.h;
  static  double kRegularIconSize = 30.0.h;
  static  double kMediumIconSize = 25.0.h;
  static  double kSmallIconSize = 20.0.h;
  static  double kVerySmallIconSize = 15.0.h;
  static  double kExtraLargeIconSize = 48.0.h;
  static  double kAppBarHeight = 56.0.h;
  static  double kTextFieldHeight= 64.0.h;
  static  double kSmallImageSize= 72.0.h;

  static Size kCustomSize(context) => MediaQuery.of(context).size;
  static  kCustomWidth(context) => MediaQuery.of(context).size.width;
  static  kCustomHeight(context) => MediaQuery.of(context).size.height;

}