import 'package:e_commerce_fruit_market/constants.dart';
import 'package:e_commerce_fruit_market/view/auth/complete_information/widgets/complete_information_body.dart';
import 'package:flutter/material.dart';

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
