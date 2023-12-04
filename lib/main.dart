import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foody/constant/color_path.dart';
import 'package:foody/feature/view/main_page.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),

      builder: (context,child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Foody',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: ColorPath.kPrimaryColor),
            useMaterial3: true,
          ),
          home:child,
        );

      },
      child: MainPage(),
    );
  }
}


