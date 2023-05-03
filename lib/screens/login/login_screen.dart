import 'package:flutter/material.dart';
import 'package:login_aadi/screens/home_screen/homeScreen.dart';
import 'package:login_aadi/screens/login/forgot_password.dart';
import 'package:login_aadi/screens/sign%20up/sign_up.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/lockIcon.dart';
import 'package:login_aadi/widgets/long_button.dart';
import 'package:login_aadi/widgets/mailIcon.dart';
import 'package:login_aadi/widgets/visibilityOff.dart';

import '../../utils/BottomNavigation/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Screen? size;
  final visibility = true;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: thirdColor,
            child: Column(
              children: [
                SizedBox(
                  height: size?.hp(2),
                ),
                SizedBox(
                  width: size?.wp(6),
                ),
                Center(
                  child: Container(
                    height: size?.hp(42),
                    width: size?.wp(80),
                    child: Image.asset(login),
                  ),
                ),
                SizedBox(
                  width: size?.wp(6),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size?.wp(6),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: size?.hp(5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Login',
                            textScaleFactor: 2.275,
                            style: TextStyle(
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
                              width: size?.wp(6),
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: size?.hp(1.5),
                ),
                Container(
                  width: size?.wp(87),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: EmailIcon(), hintText: 'Email ID'),
                      ),
                      SizedBox(
                        height: size?.hp(2),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: LockIcon(),
                          hintText: 'Password',
                          suffixIcon:
                              visibility ? VisibilityOn() : VisibilityOff(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size?.hp(2),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) =>
                                      ForgotPassword()));
                        },
                        child: Text(
                          'Forgot Password?',
                          textScaleFactor: 1.25,
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size?.wp(5),
                    ),
                  ],
                ),
                SizedBox(
                  height: size?.hp(2),
                ),
                LongButton(
                    action: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigation()));
                    },
                    text: 'Login'),
                SizedBox(
                  height: size?.hp(1.5),
                ),
                Container(
                  width: size?.wp(85),
                  alignment: Alignment.center,
                  child: Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: grey1,
                      endIndent: 15,
                      thickness: 1,
                    )),
                    Text(
                      "OR",
                      textScaleFactor: 1,
                      style:
                          TextStyle(color: grey2, fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: Divider(
                        color: grey1,
                        thickness: 1,
                        indent: 15,
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: size?.hp(1.5),
                ),
                Container(
                  width: size?.wp(87),
                  height: size?.hp(5),
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            width: size?.wp(10.5),
                          ),
                          Container(
                            height: size?.hp(2.575),
                            width: size?.wp(5),
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(google),
                          ),
                          SizedBox(
                            width: size?.wp(14),
                          ),
                          Container(
                            child: Text(
                              'Login with google',
                              textScaleFactor: 1.25,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: grey3,
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: size?.hp(.150),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'New to DeVoyage?',
                        textScaleFactor: 1.25,
                        style: TextStyle(color: grey2),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => SignUp()));
                        },
                        child: Text(
                          'Register',
                          textScaleFactor: 1.25,
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size?.hp(0.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
