import 'package:flutter/material.dart';
import 'package:santos_store_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:santos_store_app/utils/constants/sizes.dart';
import 'package:santos_store_app/utils/device/device_utility.dart';



class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MDeviceUtils.getAppBarHeight(),
      right: MSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}


