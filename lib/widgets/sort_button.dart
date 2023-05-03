import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../utils/colors/colors.dart';

class SortButton extends StatelessWidget {
  late String text;
  late Function() action;

  SortButton({required this.action, required this.text});

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      width: size?.wp(30),
      height: size?.hp(4),
      decoration: BoxDecoration(
          color: White,
          boxShadow: kElevationToShadow[2],
          borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: action,
        child: Text(
          text,
          textScaleFactor: 1.25,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
