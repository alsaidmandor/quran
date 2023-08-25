import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/color/colors.dart';
import '../../core/uitls/app_strings.dart';

class DynamicTheme{

   static final ThemeData  lightTheme = ThemeData(
  scaffoldBackgroundColor: ColorsManager.backgroundLight,
  appBarTheme: AppBarTheme(
  systemOverlayStyle: Platform.isIOS
  ? null
      : const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarIconBrightness: Brightness.dark,
  ),
  backgroundColor: ColorsManager.backgroundLight,
  elevation: 0.0,
  titleSpacing: 0.0,
  iconTheme: const IconThemeData(
  color: ColorsManager.mainColor,
  size: 16.0,
  ),
  titleTextStyle: const TextStyle(
  color: ColorsManager.mainColor,
  fontWeight: FontWeight.w500,
  fontSize: 13.0,
  fontFamily: AppStrings.fontFamily,
  ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: ColorsManager.backgroundLight,
  elevation: 0.0,
  selectedItemColor: ColorsManager.mainColor,
  unselectedItemColor: Colors.grey[400],
  type: BottomNavigationBarType.fixed,
  selectedLabelStyle: const TextStyle(
  height: 1.5,
  ),
  ),
  colorScheme: const ColorScheme(
  primary: ColorsManager.mainColor,
  onPrimary: ColorsManager.mainColor,
  primaryContainer: ColorsManager.mainColor,
  secondary: ColorsManager.secondaryLight,
  onSecondary: ColorsManager.onSecondaryLight,
  secondaryContainer: ColorsManager.secondaryContainerLight,
  onSecondaryContainer: ColorsManager.onSecondaryContainerLight,
  tertiary: ColorsManager.tertiaryLight,
  onTertiary: ColorsManager.onTertiaryLight,
  surface: ColorsManager.surfaceLight,
  onPrimaryContainer:ColorsManager.onBackgroundLight ,
  onSurface: ColorsManager.onSurfaceLight,
  background: ColorsManager.backgroundLight,
  onBackground: ColorsManager.onBackgroundLight,
  error: ColorsManager.errorLight,
  onError: ColorsManager.onErrorLight,
  brightness: Brightness.light,
  ),
  textTheme: const TextTheme(
  titleLarge: TextStyle(
  fontSize: 16.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w600,
  color: ColorsManager.secondaryLight,
  ),
  titleMedium: TextStyle(
  fontSize: 14.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w700,
  color: ColorsManager.secondaryLight,
  ),
  titleSmall: TextStyle(
  fontSize: 12.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w400,
  color: ColorsManager.onSecondaryLight,
  ),
  labelLarge: TextStyle(
  fontSize: 20.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w600,
  color: ColorsManager.backgroundLight,
  ),
  displaySmall: TextStyle(
  fontSize: 12.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w600,
  color: ColorsManager.white,
  ),
  displayMedium: TextStyle(
  fontSize: 14.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w600,
  color: ColorsManager.onSecondaryContainerLight,
  ),
  displayLarge: TextStyle(
  fontSize: 16.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w400,
  color: ColorsManager.secondaryLight,
  ),
  bodySmall: TextStyle(
  fontSize: 12.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w300,
  color: ColorsManager.onSecondaryContainerLight,
  ),
  bodyMedium: TextStyle(
  fontSize: 12.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w600,
  color: ColorsManager.secondaryLight,
  ),
  bodyLarge: TextStyle(
  fontSize: 18.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w500,
  color: ColorsManager.secondaryLight,
  ),
  ),
  );

  static final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: ColorsManager.secondaryLight,
  appBarTheme: AppBarTheme(
  systemOverlayStyle: Platform.isIOS
  ? null
      : const SystemUiOverlayStyle(
  statusBarColor: ColorsManager.mainColor,
  statusBarIconBrightness: Brightness.dark,
  ),
  backgroundColor: ColorsManager.onBackgroundLight,
  elevation: 0.0,
  titleSpacing: 0.0,
  iconTheme: const IconThemeData(
  color: ColorsManager.mainColor,
  size: 16.0,
  ),
  titleTextStyle: const TextStyle(
  color: ColorsManager.mainColor,
  fontWeight: FontWeight.w500,
  fontSize: 13.0,
  fontFamily: AppStrings.fontFamily,
  ),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: ColorsManager.backgroundLight,
  elevation: 50.0,
  selectedItemColor: ColorsManager.mainColor,
  unselectedItemColor: Colors.grey[400],
  type: BottomNavigationBarType.fixed,
  selectedLabelStyle: const TextStyle(
  height: 1.5,
  ),
  ),

  colorScheme: const ColorScheme(
  primary: ColorsManager.mainColor,
  onPrimary: ColorsManager.mainColor,
  primaryContainer: ColorsManager.mainColor,
  secondary: ColorsManager.secondaryLight,
  onSecondary: ColorsManager.onSecondaryLight,
  secondaryContainer: ColorsManager.secondaryContainerLight,
  onSecondaryContainer: ColorsManager.onSecondaryContainerLight,
  tertiary: ColorsManager.tertiaryLight,
  onTertiary: ColorsManager.onTertiaryLight,
  surface: ColorsManager.surfaceLight,
  onSurface: ColorsManager.onSurfaceLight,
  background: ColorsManager.backgroundLight,
  onBackground: ColorsManager.onBackgroundLight,
  error: ColorsManager.errorLight,
  onError: ColorsManager.onErrorLight,
  brightness: Brightness.light,
  ),
  textTheme: const TextTheme(
  titleLarge: TextStyle(
  fontSize: 20.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w400,
  color: ColorsManager.secondaryLight,
  ),
  titleMedium: TextStyle(
  fontSize: 16.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w400,
  color: ColorsManager.secondaryContainerLight,
  ),
  titleSmall: TextStyle(
  fontSize: 14.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w400,
  color: ColorsManager.onSecondaryLight,
  ),
  labelLarge: TextStyle(
  fontSize: 20.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w600,
  color: ColorsManager.backgroundLight,
  ),
  displaySmall: TextStyle(
  fontSize: 14.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w300,
  color: ColorsManager.onSecondaryContainerLight,
  ),
  displayMedium: TextStyle(
  fontSize: 16.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w500,
  color: ColorsManager.black,
  ),
  displayLarge: TextStyle(
  fontSize: 16.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w400,
  color: ColorsManager.secondaryLight,
  ),
  bodySmall: TextStyle(
  fontSize: 12.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w300,
  color: ColorsManager.onSecondaryContainerLight,
  ),
  bodyMedium: TextStyle(
  fontSize: 15.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w500,
  color: ColorsManager.white,
  ),
  bodyLarge: TextStyle(
  fontSize: 18.0,
  fontFamily: AppStrings.fontFamily,
  fontWeight: FontWeight.w500,
  color: ColorsManager.secondaryLight,
  ),
  ),
  );
}