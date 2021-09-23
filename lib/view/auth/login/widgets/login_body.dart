import 'package:e_commerce_fruit_market/constants.dart';
import 'package:e_commerce_fruit_market/shared/utils/size_confing.dart';
import 'package:e_commerce_fruit_market/shared/widgets/custom_buttons.dart';
import 'package:e_commerce_fruit_market/shared/widgets/space_widget.dart';
import 'package:e_commerce_fruit_market/view/auth/complete_information/complete_information_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenHeight,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          VerticalSpace(15),
          Image.asset(kLogo),
          VerticalSpace(3),
          Text(
            'Fruit Market',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 42,
                color: kPrimaryColor,
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          Row(
            children: [
              Expanded(
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(
                      () => CompleteInformationScreen(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                  text: 'Log In with',
                  iconData: SvgPicture.asset(
                    'assets/icons/google.svg',
                    height: 35.0,
                    width: 35.0,
                    // allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
              HorizontalSpace(1.5),
              Expanded(
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(
                      () => CompleteInformationScreen(),
                      duration: Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                  text: 'Log In with',
                  iconData: SvgPicture.asset(
                    'assets/icons/facebook.svg',
                    height: 35.0,
                    width: 35.0,
                    // allowDrawingOutsideViewBox: true,
                  ),
                ),
              ),
            ],
          ),
          Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
