import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_aadi/screens/login/reset.dart';
import 'package:login_aadi/utils/Toasty.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'dart:convert';
import 'package:login_aadi/utils/hive_utils.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/back_arrow_button.dart';
import 'package:login_aadi/widgets/long_button.dart';
import 'package:login_aadi/widgets/otpBox.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../utils/BottomNavigation/bottom_navigation.dart';
import 'package:dio/dio.dart';
import '../../_Models/PostModel/register_res.dart';
import '../../utils/session_key.dart';
import '../login/otp.dart';

class Otp extends StatefulWidget {
  Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  OtpFieldController otpController = OtpFieldController();
  final Dio _dio = Dio();
  String otps = "";

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Container(
          color: thirdColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size?.hp(5),
              ),
              Row(
                children: [
                  BackArrow(),
                ],
              ),
              Container(
                height: size?.hp(30),
                width: size?.wp(60),
                child: Image.asset(
                  otp,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: size?.hp(1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Stack(
                  children: [
                    Container(
                      height: size?.hp(5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter OTP',
                        textScaleFactor: 2.2,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: size?.hp(4.5),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 1.5),
                          height: size?.hp(.4),
                          width: size?.wp(9),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size?.hp(3),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "A 6 digit code has been sent to",
                          textScaleFactor: 1.4,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color.fromARGB(255, 67, 56, 56),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          // "+${HiveUtils.getSession<String>(
                          //   SessionKey.mobileNum,
                          // )}",

                          otps,
                          textScaleFactor: 1.4,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color.fromARGB(255, 67, 56, 56),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size?.hp(5),
              ),
              OTPTextField(
                  controller: otpController,
                  length: 6,
                  width: getWidth(context) / 1.2,
                  textFieldAlignment: MainAxisAlignment.spaceBetween,
                  fieldWidth: 40,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 10,
                  style: TextStyle(fontSize: 17),
                  onChanged: (value) {
                    otps = value;
                  },
                  onCompleted: (pin) {
                    otps = pin;
                    print("Completed: " + pin);
                  }),
              // OtpBox(),
              SizedBox(
                height: size?.hp(6),
              ),
              LongButton(
                action: () {
                  if (otps.isNotEmpty) {
                    verify_otp();
                  } else {
                    Toasty.showtoast("Enter Otp");
                  }
                },
                text: 'Verify',
              ),
            ],
          ),
        ),
      ),
    );
  }

  verify_otp() async {
    try {
      var response = await _dio.post(
        "http://edutech.vass.co.in/api/v1/auth/login",
        data: {
          "username": HiveUtils.getSession<String>(SessionKey.mobileNum),
          "password": otps.toString()
        },
      );
      var jsonData = jsonDecode(response.toString());
      if (response.statusCode == 200) {
        if (jsonData['success'] == true) {
          HiveUtils.addSession(SessionKey.isLoggedIn, true);
          HiveUtils.addSession(
              SessionKey.accesstoken, jsonData['token']['access']);
          HiveUtils.addSession(
              SessionKey.refereshToken, jsonData['token']['refresh']);
          HiveUtils.addSession(SessionKey.userid, jsonData['data']['id']);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => BottomNavigation()));
        }
      } else {
        Toasty.showtoast(jsonData['message']);
      }
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
