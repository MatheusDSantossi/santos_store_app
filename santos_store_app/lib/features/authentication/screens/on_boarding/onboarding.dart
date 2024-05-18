import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:santos_store_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:santos_store_app/features/authentication/screens/on_boarding/widgets/onboarding_dot_navigation.dart';
import 'package:santos_store_app/features/authentication/screens/on_boarding/widgets/onboarding_next_button.dart';
import 'package:santos_store_app/features/authentication/screens/on_boarding/widgets/onboarding_page.dart';
import 'package:santos_store_app/features/authentication/screens/on_boarding/widgets/onboarding_skip.dart';
import 'package:santos_store_app/utils/constants/image_strings.dart';
import 'package:santos_store_app/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MImages.onBoardingImage1,
                title: MTexts.onBoardingTitle1,
                subtitle: MTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MImages.onBoardingImage2,
                title: MTexts.onBoardingTitle2,
                subtitle: MTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MImages.onBoardingImage3,
                title: MTexts.onBoardingTitle3,
                subtitle: MTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
