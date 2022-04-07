import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nesco_app/constants/colors.dart';

import '../../../widgets/custom_button_widget.dart';
import '../controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);
  final onBoardingController = Get.put(OnBoardingScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(backgroundColor: white, elevation: 0),
      body: Stack(
        children: [
          PageView.builder(
              controller: onBoardingController.viewController,
              onPageChanged: onBoardingController.selectedIdex,
              itemCount: onBoardingController.onBoardingViews.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.27,
                      ),
                      Image.asset(
                        onBoardingController.onBoardingViews[index].imageAsset,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Text(
                        onBoardingController.onBoardingViews[index].title,
                        style: GoogleFonts.roboto(
                            color: lblue,
                            fontWeight: FontWeight.w800,
                            fontSize: 25.sp),
                      ),
                    ],
                  ),
                );
              }),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.13,
            left: MediaQuery.of(context).size.width * 0.4,
            child: Row(
                children: List.generate(
                    onBoardingController.onBoardingViews.length,
                    (index) => Obx(
                          () => Container(
                            margin: const EdgeInsets.all(4),
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color:
                                    onBoardingController.selectedIdex.value ==
                                            index
                                        ? lblue
                                        : white,
                                shape: BoxShape.circle),
                          ),
                        ))),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.2,
            bottom: 40.h,
            child: CustomButton(
              width: MediaQuery.of(context).size.width * 0.58,
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
