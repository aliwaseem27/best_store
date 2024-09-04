import 'package:flutter/material.dart';

import 'theme_widget/elevated_button_theme.dart';
import 'theme_widget/text_form_field_theme.dart';
import 'theme_widget/my_app_bar_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
    fontFamily: 'Lato',
    inputDecorationTheme: AppTextFieldFormTheme.lightInputDecorationTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevetedButtonTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
  );
}
