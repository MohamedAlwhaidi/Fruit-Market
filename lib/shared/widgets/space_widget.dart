import 'package:e_commerce_fruit_market/shared/utils/size_confing.dart';
import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(this.value);

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value,
    );
  }
}
