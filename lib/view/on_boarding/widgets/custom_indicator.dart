import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_fruit_market/constants.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  final double? dotIndex;

  const CustomIndicator({Key? key, required this.dotIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!,
      decorator: DotsDecorator(
        activeColor: kPrimaryColor,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: kPrimaryColor),
        ),
      ),
    );
  }
}
