import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/onboarding_info_model.dart';

class OnBoardingScreenController extends GetxController {
  var selectedIdex = 0.obs;
  var viewController = PageController();
  List<OnBoardingInfomations> onBoardingViews = [
    OnBoardingInfomations(
      'assets/images/bolt.png',
      'NESCO Power\nin your pocket ',
    ),
    OnBoardingInfomations(
      'assets/images/bolt.png',
      "     Buy Power from\nfrom your mobile phone,",
    ),
    OnBoardingInfomations(
      'assets/images/bolt.png',
      "   Customize Light\n at your convinience",
    )
  ];
}
