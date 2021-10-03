import 'package:e_commerce_fruit_market/shared/widgets/custom_buttons.dart';
import 'package:e_commerce_fruit_market/shared/widgets/space_widget.dart';
import 'package:flutter/material.dart';

import 'complete_info_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpace(10),
            CompleteInfoItem(text: 'Enter Your Name'),
            VerticalSpace(3),
            CompleteInfoItem(text: 'Enter Your Phone Number'),
            VerticalSpace(3),
            CompleteInfoItem(
              text: 'Add Address',
              maxLines: 5,
            ),
            VerticalSpace(5),
            CustomGeneralButton(text: 'Login', onPress: () {}),
          ],
        ),
      ),
    );
  }
}
