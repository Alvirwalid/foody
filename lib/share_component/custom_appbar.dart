import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constant/asset_path.dart';
import 'package:foody/constant/color_path.dart';
import 'package:foody/constant/other_constant.dart';
import 'package:foody/share_component/custom_style.dart';

class CustomAppbar{


      static customAppBar(){
            return Padding(padding: EdgeInsets.only(top: OtherConstant.kAppBarHeight*0.5,left: OtherConstant.kLargePadding,right: OtherConstant.kLargePadding),
                  child: Container(
                        // color: ColorPath.kRed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                          Image.asset(AssetPath.kMenu,width: OtherConstant.kMediumTextSize*2,height:OtherConstant.kMediumTextSize*2.5,),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Image.asset(AssetPath.kLocation,width: 14.sp,height: 20.sp,),
                              SizedBox(width: OtherConstant.kRegularPadding,),
                              Text('Chicago,IL',
                                overflow: TextOverflow.ellipsis,
                                style: CustomStyle.kCustomTextStyle(fontWeight: FontWeight.w700,fontSize: OtherConstant.kLargePadding),)
                            ],),
                          ),
                          Container(
                            width: 50.sp,height: 50.sp,
                                decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(OtherConstant.kRegularRadius),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(AssetPath.kUser,))

                                ),

                          )

                    ],
              ),
            ),)
            ;
      }


      }