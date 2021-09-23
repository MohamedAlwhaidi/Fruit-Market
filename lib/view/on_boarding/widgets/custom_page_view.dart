import 'package:flutter/material.dart';

import 'page_view_item.dart';

class CustomPageView extends StatelessWidget {

  final PageController? pageController;

  const CustomPageView({Key? key,required this.pageController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController!,
      children: [
        PageViewItem(
          pathImage: 'assets/images/on_boarding1.png',
          title: 'E Shopping',
          subTitle: 'Explore  top organic fruits & grab them',
        ),
        PageViewItem(
          pathImage: 'assets/images/on_boarding2.png',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          pathImage: 'assets/images/on_boarding3.png',
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your Place',
        ),
      ],
    );
  }
}
