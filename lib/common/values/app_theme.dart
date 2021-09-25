import 'package:baby_track/common/values/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: AppColors.page,
  primaryColor: AppColors.primary,
  // 取消水波纹
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.nav,
    selectedItemColor: AppColors.active,
    unselectedItemColor: AppColors.unactive,
    selectedLabelStyle: TextStyle(
      fontSize: 12,
    ),
  ),
);
