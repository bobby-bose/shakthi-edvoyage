import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_aadi/screens/login/login_screen.dart';
import 'package:login_aadi/screens/onboarding/screen_1.dart';
import 'package:login_aadi/screens/onboarding/screen_2.dart';
import 'package:login_aadi/utils/BottomNavigation/bottom_navigation.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/hive_utils.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/session_key.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Screen? size;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () =>{
          if(HiveUtils.getSession<bool>(SessionKey.isLoggedIn,defaultValue: false)){
            Navigator.pushReplacement(context,
                PageRouteBuilder(pageBuilder: (_, __, ___) => BottomNavigation())),
          }else{
            Navigator.pushReplacement(context,
                PageRouteBuilder(pageBuilder: (_, __, ___) => ScreenOne())),
          }

        }
            );
  }

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                height: size?.hp(57),
                child: Image.asset(companylogo, fit: BoxFit.fitWidth),
              ),
              Spacer(),
              Container(
                height: size?.hp(4),
                child: Text(
                  'edvoyage Pvt Ltd',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,
                      color: primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
