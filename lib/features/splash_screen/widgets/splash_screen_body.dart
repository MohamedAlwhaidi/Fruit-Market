import 'package:e_commerce_fruit_market/features/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  _SplashScreenBodyState createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1.0).animate(animationController!);
    animationController!.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(flex: 3),
        // To make the text fading between two double values
        FadeTransition(
          opacity: fadingAnimation!,
          child: Text(
            'Fruit Market',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 51,
                color: const Color(0xffffffff),
              ),
            ),
          ),
        ),
        Spacer(flex: 1),
        Image.asset(
          'assets/images/splash_screen_image.png',
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}

void goToNextView() {
  Future.delayed(
    Duration(seconds: 3),
    () => Get.to(
      () => OnBoardingScreen(),
      transition: Transition.fade,
    ),
  );
}
