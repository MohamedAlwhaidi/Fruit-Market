import 'package:e_commerce_fruit_market/constants.dart';
import 'package:e_commerce_fruit_market/view/auth/login/widgets/login_body.dart';
import 'package:flutter/material.dart';

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
