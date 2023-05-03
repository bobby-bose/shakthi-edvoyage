import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:login_aadi/splash.dart';
import 'package:login_aadi/utils/hive_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/Cavity_Screen/cavity.dart';
import 'screens/UniversityScreen/tabs/FeedTab.dart';
import 'screens/UniversityScreen/tabs/GalleryTab.dart';
import 'screens/UniversityScreen/tabs/aboutTab.dart';
import 'screens/UniversityScreen/tabs/courses_screenTab.dart';
import 'screens/exploreUniversity_screen/exploreCoursesTab.dart';
import 'screens/home_screen/homeScreen.dart';
import 'screens/login/otp.dart';
import 'screens/sort_screens/sort_home.dart';

late SharedPreferences sp;

void main() async {
  await HiveUtils.init();
  // sp = await SharedPreferences.getInstance();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
      // home:TeachHome(),
    ),
  );
}
