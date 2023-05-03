import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';

class BlackDot extends StatefulWidget {
  const BlackDot({Key? key}) : super(key: key);

  @override
  State<BlackDot> createState() => _BlackDotState();
}

class _BlackDotState extends State<BlackDot> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      height: size?.hp(.5),
      width: size?.wp(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fourthColor
      ),
    );
  }
}
