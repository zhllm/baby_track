import 'package:baby_track/common/routes/app_pages.dart';
import 'package:baby_track/common/values/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: Size(375, 812 - 44 - 34),
    builder: () => GetMaterialApp(
      title: "读琴",
      theme: themeData,
      debugShowCheckedModeBanner: true,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  ));
}
