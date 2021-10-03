import 'package:e_commerce_fruit_market/shared/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/complete_information_body.dart';

class CompleteInformationScreen extends StatelessWidget {
  const CompleteInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: CompleteInformationBody(),
    );
  }
}
