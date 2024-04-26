import 'package:flutter/material.dart';
import 'package:santos_store_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:santos_store_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:santos_store_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:santos_store_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:santos_store_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:santos_store_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:santos_store_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:santos_store_app/utils/theme/custom_themes/text_theme.dart';

class MAppTheme {
  MAppTheme._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MTextTheme.lightTextTheme,
    chipTheme: MChipTheme.lightChipTheme,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    checkboxTheme: MCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MTextTheme.darkTextTheme,
    chipTheme: MChipTheme.darkChipTheme,
    appBarTheme: MAppBarTheme.darkAppBarTheme,
    checkboxTheme: MCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.darkInputDecorationTheme,
    // inputDecoration is a TextFieldTheme.....
  );
}
