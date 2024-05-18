import 'package:flutter/material.dart';
import 'package:santos_store_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:santos_store_app/utils/device/device_utility.dart';
import 'package:santos_store_app/utils/helpers/helper_functions.dart';
import 'package:santos_store_app/utils/constants/sizes.dart';
import 'package:santos_store_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MHelperFunctions.isDarkMode(context);

    return Positioned(
      right: MSizes.defaultSpace,
      bottom: MDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? MColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3)),
    );
  }
}
