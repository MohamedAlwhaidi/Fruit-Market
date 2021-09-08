import 'package:e_commerce_fruit_market/shared/utils/size_confing.dart';
import 'package:e_commerce_fruit_market/shared/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_indicator.dart';
import 'custom_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 25,
          child: CustomIndicator(
              dotIndex: _pageControllerHasClients() ? pageController?.page : 0),
        ),
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: MediaQuery.of(context).size.width * .1,
          child: Visibility(
            visible: _pageControllerHasClients()
                ? (pageController?.page == 2 ? false : true)
                : true,
            child: TextButton(
              onPressed: () => pageController?.jumpToPage(2),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xff898989),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            text: _pageControllerHasClients()
                ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                : 'Next',
            onPress: () {
              pageController?.page == 0
                  ? pageController?.jumpToPage(1)
                  : pageController?.page == 1
                      ? pageController?.jumpToPage(2)
                      // TODO: on tap Get Started
                      : pageController?.jumpToPage(0);
            },
          ),
        ),
      ],
    );
  }

  bool _pageControllerHasClients() {
    return pageController!.hasClients;
  }
}
