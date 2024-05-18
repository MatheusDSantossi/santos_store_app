import 'package:flutter/material.dart';
import 'package:santos_store_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:santos_store_app/utils/constants/colors.dart';
import 'package:santos_store_app/utils/constants/sizes.dart';
import 'package:santos_store_app/utils/device/device_utility.dart';
import 'package:santos_store_app/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = MHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MSizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MColors.light : MColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
