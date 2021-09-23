import 'package:e_commerce_fruit_market/shared/widgets/custom_text_form_field.dart';
import 'package:e_commerce_fruit_market/shared/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class CompleteInfoItem extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextInputType? inputType;
  const CompleteInfoItem(
      {Key? key, required this.text, this.maxLines, this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: const Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        VerticalSpace(2),
        CustomTextFormField(
          maxLines: maxLines,
          inputType: inputType,
        ),
      ],
    );
  }
}
