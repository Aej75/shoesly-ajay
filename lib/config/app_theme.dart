import 'package:code_test/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    fontFamily: FontFamily.urbanist,
    brightness: Brightness.light,
    primaryColor: colorPrimary,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFF4F4F4F),
      ),
      color: Colors.white,
    ),
    cardTheme: const CardTheme(elevation: 8),
    tabBarTheme: TabBarTheme(
        unselectedLabelColor: colorPrimary,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        labelStyle: const TextStyle(fontWeight: FontWeight.bold),
        indicator: BoxDecoration(
          border: Border.all(),
          color: colorPrimary,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: colorPrimary,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(color: colorPrimary),
        unselectedIconTheme: IconThemeData(color: colorLightGrey),
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.black)),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
          color: Color(0xFFBDBDBD), fontSize: 16, fontWeight: FontWeight.w400),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
      disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBorder, width: 1),
          borderRadius: BorderRadius.circular(8)),
    ),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
          fontSize: 46,
          color: Colors.white,
          letterSpacing: -2,
          fontWeight: FontWeight.w300),
      titleLarge: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      titleSmall: TextStyle(color: Colors.grey, fontSize: 14),
      titleMedium: TextStyle(
          color: AppColors.blackColor,
          fontSize: 16,
          fontWeight: FontWeight.w700),
      bodyLarge: TextStyle(
          fontSize: 22,
          color: AppColors.blackColor,
          fontWeight: FontWeight.w700),
      displayMedium: TextStyle(),
      headlineMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xFF191919)),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
  );
}
