import 'package:e_commerce_fruit_market/shared/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: LoginScreenBody(),
    );
  }
}
