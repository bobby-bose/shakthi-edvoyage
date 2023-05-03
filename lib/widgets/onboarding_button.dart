import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../utils/colors/colors.dart';

class OnboardingButton extends StatelessWidget {

  late Function() action;

  OnboardingButton({
    required this.action,
});

Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      width: size?.wp(15),
      height: size?.hp(10),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(CircleBorder()),
          backgroundColor: MaterialStateProperty.all(secondaryColor),
        ),
        child: Container(
          height: size?.hp(5),
          width: size?.wp(13),
          decoration: BoxDecoration(
              color: thirdColor,
            shape: BoxShape.circle
          ),
          child: Icon(Icons.arrow_forward_ios_rounded,
              color: primaryColor),
        ),
        onPressed: action
      )
    );
  }
}
