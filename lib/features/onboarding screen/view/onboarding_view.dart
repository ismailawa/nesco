import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nesco_app/constants/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../widgets/custom_button_widget.dart';
import '../controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);
  final onBoardingController = Get.put(OnBoardingScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(backgroundColor: black, elevation: 0),
      body: Stack(
        children: [
          PageView.builder(
              controller: onBoardingController.viewController,
              onPageChanged: onBoardingController.selectedIdex,
              itemCount: onBoardingController.onBoardingViews.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      Image.asset(
                        onBoardingController.onBoardingViews[index].imageAsset,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      GradientText(
                        onBoardingController.onBoardingViews[index].title,
                        style: GoogleFonts.roboto(
                            color: blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        colors: [blue, offBlue, blue],
                      ),
                    ],
                  ),
                );
              }),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: MediaQuery.of(context).size.width * 0.4,
            child: Row(
                children: List.generate(
                    onBoardingController.onBoardingViews.length,
                    (index) => Obx(
                          () => Container(
                            margin: EdgeInsets.all(4),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color:
                                    onBoardingController.selectedIdex.value ==
                                            index
                                        ? blue
                                        : white,
                                shape: BoxShape.circle),
                          ),
                        ))),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.2,
            bottom: 40,
            child: CustomButton(
              text: 'GET STARTED',  
              onPressed: () {
                Get.toNamed('loginPage');
              },
            ),
          ),
        ],
      ),
    );
  }
}
