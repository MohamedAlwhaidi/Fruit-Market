import 'package:e_commerce_fruit_market/shared/utils/size_confing.dart';
import 'package:e_commerce_fruit_market/shared/widgets/space_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGeneralButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  const CustomGeneralButton(
      {Key? key, required this.text, required this.onPress})
      : super(key: key);

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

class CustomButtonWithIcon extends StatelessWidget {
  final String text;
  final Widget? iconData;
  final VoidCallback? onTap;
  final Color? color;
  const CustomButtonWithIcon(
      {Key? key, required this.text, this.iconData, this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.screenWidth,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xFF707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconData!,
            HorizontalSpace(2),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
