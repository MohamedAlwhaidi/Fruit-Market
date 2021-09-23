import 'package:e_commerce_fruit_market/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SplashScreenBody(),
    );
  }
}
