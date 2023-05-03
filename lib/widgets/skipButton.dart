import 'package:flutter/material.dart';

import '../screens/login/login_screen.dart';
import '../screens/sign up/sign_up.dart';
import '../utils/colors/colors.dart';

class SkipButton extends StatefulWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  State<SkipButton> createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, PageRouteBuilder(pageBuilder: (_, __, ___) => SignUp()));
      },
      child: Text(
        'Skip',
        textScaleFactor: 1.4,
        style: TextStyle(
            fontFamily: 'Roboto',
            color: primaryColor,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
