import 'package:flutter/material.dart';

import '../utils/responsive.dart';

class timerButton extends StatelessWidget {
  late String text;
  late Function() action;
  var color;

  timerButton({required this.action, required this.color, required this.text});

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      width: size?.wp(30),
      height: size?.hp(4),
      decoration: BoxDecoration(
          color: color,
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
