import 'package:flutter/material.dart';

import '../../core/utils/app_styles.dart';
import '../../core/utils/colors_manager.dart';

class AppTheme {
  static ThemeData light = ThemeData(
      useMaterial3: false,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: ColorsManager.blue,
          iconSize: 33,
          shape: StadiumBorder(
              side: BorderSide(color: ColorsManager.white, width: 4))),
      appBarTheme: AppBarTheme(
          backgroundColor: ColorsManager.blue,
          //toolbarHeight: 157
          titleTextStyle: AppLightStyles.appBarTextStyle),
      scaffoldBackgroundColor: ColorsManager.scaffoldBg,
      bottomAppBarTheme: const BottomAppBarTheme(
          shape: CircularNotchedRectangle(), color: ColorsManager.white),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: ColorsManager.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false),
      bottomSheetTheme: const BottomSheetThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )),
          backgroundColor: ColorsManager.white,
          elevation: 18),
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsManager.blue,
          primary: ColorsManager.blue,
          onPrimary: ColorsManager.white),
      primaryColor: ColorsManager.blue);
  static ThemeData dark = ThemeData();
}
