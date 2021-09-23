import 'package:e_commerce_fruit_market/constants.dart';
import 'package:e_commerce_fruit_market/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 680),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fruit Market',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
            ),
          ),
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: SplashScreen(),
      ),
    );
  }
}
