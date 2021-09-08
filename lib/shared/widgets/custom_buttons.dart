import 'package:e_commerce_fruit_market/shared/utils/size_confing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomGeneralButton extends StatelessWidget {
  final String text;
  final Function() onPress;

  const CustomGeneralButton({Key? key, required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: SizeConfig.screenWidth,
      child: ElevatedButton(
        onPressed: onPress,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0.r))),
      ),
    );
  }
}
