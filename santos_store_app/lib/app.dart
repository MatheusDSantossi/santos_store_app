import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:santos_store_app/features/authentication/screens/on_boarding/onboarding.dart';
import 'package:santos_store_app/utils/theme/theme.dart';

// -- Use this Class to setup themes, initial Bindings, any animations and much more
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
