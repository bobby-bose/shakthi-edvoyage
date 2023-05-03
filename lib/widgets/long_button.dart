import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../utils/colors/colors.dart';

class LongButton extends StatelessWidget {
  late String text;
  late Function() action;

  LongButton({required this.action, required this.text});

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      width: size?.wp(87),
      height: size?.hp(5),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: action,
        child: Text(
          text,
          textScaleFactor: 1.25,
          style: TextStyle(
            fontFamily: 'Roboto',
            color: thirdColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
