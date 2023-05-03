import 'package:flutter/material.dart';
import 'package:login_aadi/screens/login/otp.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/back_arrow_button.dart';
import 'package:login_aadi/widgets/long_button.dart';
import 'package:login_aadi/widgets/mailIcon.dart';

import '../../utils/colors/colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                height: size?.hp(35),
                width: size?.wp(80),
                child: Image.asset(forgot),
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
                        'Forgot',
                        textScaleFactor: 2.225,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
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
                          width: size?.wp(6),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 2),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password?',
                    textScaleFactor: 2.225,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: size?.hp(2),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Don't worry it happense. Please enter the address",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: grey2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "associated with your account.",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: grey2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size?.hp(1),
              ),
              Container(
                width: size?.wp(87),
                child: TextField(
                  decoration: InputDecoration(
                    icon: EmailIcon(),
                    label: Text(
                      'Email ID / Mobile Number',
                      textScaleFactor: .95,
                      style: TextStyle(
                          color: grey2,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size?.hp(3.6),
              ),
              LongButton(
                  action: () {
                    Navigator.push(context,
                        PageRouteBuilder(pageBuilder: (_, __, ___) => Otp()));
                  },
                  text: 'Continue'),
            ],
          ),
        ),
      ),
    );
  }
}
