import 'package:e_commerce_fruit_market/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'view/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 680),
      builder: () =>  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fruit Market',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
            ),
          ),
          // textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
