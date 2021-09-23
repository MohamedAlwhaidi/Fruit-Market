import 'package:e_commerce_fruit_market/shared/utils/size_confing.dart';
import 'package:e_commerce_fruit_market/shared/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  final String pathImage;
  final String title;
  final String subTitle;

  const PageViewItem(
      {Key? key,
      required this.pathImage,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
          height: SizeConfig.defaultSize! * 20,
          child: Image.asset(pathImage),
        ),
        const VerticalSpace(5),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.bold,
          ),
        ),
        const VerticalSpace(2.1),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 15,
            color: const Color(0xff78787c),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
