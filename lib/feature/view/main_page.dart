import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constant/color_path.dart';
import 'package:foody/constant/other_constant.dart';
import 'package:foody/feature/view/account_page.dart';
import 'package:foody/feature/view/favorites_page.dart';
import 'package:foody/feature/view/home_page.dart';
import 'package:foody/feature/view/more_page.dart';
import 'package:foody/share_component/custom_appbar.dart';
import 'package:foody/share_component/custom_style.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var selectIndex=0.obs;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController=PageController(initialPage: selectIndex.value);
  }
onTap(index){

    selectIndex.value=index;
    pageController.jumpToPage(selectIndex.value);

}

  List pages=[
    HomePage(),
    FavoritesPage(),
    AccountPage(),
    MorePage()

  ];

  @override
  Widget build(BuildContext context) {

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
      ),
      child: Scaffold(
        extendBody: true,
        body:
        Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: OtherConstant.kLargePadding),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(

                      color:ColorPath.kOrarangeWhitest,
                    ),
                  ),
                  SizedBox(width: OtherConstant.kRegularRadius,),
                  Expanded(
                    child: Container(

                      color:ColorPath.kOrarangeWhitest,
                    ),
                  ),
                  SizedBox(width: OtherConstant.kRegularRadius,),
                  Expanded(
                    child: Container(

                      color:ColorPath.kOrarangeWhitest,
                    ),
                  ),
                  SizedBox(width: OtherConstant.kRegularRadius,),
                  Expanded(
                    child: Container(

                      color:ColorPath.kOrarangeWhitest,
                    ),
                  ),
                  SizedBox(width: OtherConstant.kRegularRadius,),
                  Expanded(
                    child: Container(

                      color:ColorPath.kOrarangeWhitest,
                    ),
                  ),
                  SizedBox(width: OtherConstant.kRegularRadius,),
                  Expanded(
                    child: Container(

                      color:ColorPath.kOrarangeWhitest,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [

                CustomAppbar.customAppBar(

                ),

                Expanded(
                  child: PageView(
                    controller: pageController,
                    children: [
                      HomePage(),
                      FavoritesPage(),
                      AccountPage(),
                      MorePage()

                    ],
                  ),
                ),
              ],
            )
          ],
        ),

        bottomNavigationBar: Obx(() => BottomNavigationBar(

            backgroundColor: Colors.white.withOpacity(.5),
            currentIndex: selectIndex.value,
            type: BottomNavigationBarType.fixed,
            onTap: onTap,
            elevation: 0,
            enableFeedback: true,
            landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
            useLegacyColorScheme: false,
            mouseCursor: MouseCursor.defer,
            showSelectedLabels: true,
            // showUnselectedLabels: true,
            selectedLabelStyle:CustomStyle.kCustomTextStyle(color: ColorPath.kPrimaryColor) ,
            unselectedLabelStyle: CustomStyle.kCustomTextStyle(color:ColorPath.kGreyMain),
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon:Column(
                    children: [
                      Icon(Icons.dashboard,size: OtherConstant.kLargeTextSize+5,color:selectIndex.value==0?ColorPath.kPrimaryColor: ColorPath.kGreyMain,),
                      // Text('Home',style: CustomStyle.kCustomTextStyle(color: selectIndex.value==0?ColorPath.kPrimaryColor: ColorPath.kGreyMain),)

                    ],
                  ),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon:Column(
                    children: [
                      Icon(Icons.favorite_border_outlined,size: OtherConstant.kLargeTextSize+5,color:selectIndex.value==1?ColorPath.kPrimaryColor: ColorPath.kGreyMain),
                      // Text('Favorites',style: CustomStyle.kCustomTextStyle(color:selectIndex.value==1?ColorPath.kPrimaryColor: ColorPath.kGreyMain),)

                    ],
                  ),            label: 'Favorites'
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon:Column(
                    children: [
                      Icon(FeatherIcons.user,size: OtherConstant.kLargeTextSize+5,color:selectIndex.value==2?ColorPath.kPrimaryColor: ColorPath.kGreyMain),
                      // Text('Account',style: CustomStyle.kCustomTextStyle(color: selectIndex.value==2?ColorPath.kPrimaryColor: ColorPath.kGreyMain),)

                    ],
                  ),            label: 'Account'
              ),
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon:Column(
                    children: [
                      Icon(Icons.more_horiz,size: OtherConstant.kLargeTextSize+5,color:selectIndex.value==3?ColorPath.kPrimaryColor: ColorPath.kGreyMain),
                      // Text('More',style: CustomStyle.kCustomTextStyle(color: selectIndex.value==3?ColorPath.kPrimaryColor: ColorPath.kGreyMain),)

                    ],
                  ),            label: 'More'
              ),
            ]
        )),


      ),
    );
  }


}
