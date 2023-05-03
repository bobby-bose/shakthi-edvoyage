import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../../utils/colors/colors.dart';

class GreyDot extends StatefulWidget {
  const GreyDot({Key? key}) : super(key: key);

  @override
  State<GreyDot> createState() => _GreyDotState();
}

class _GreyDotState extends State<GreyDot> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      height: size?.hp(1),
      width: size?.wp(1.5),
      decoration: BoxDecoration(color: grey2, shape: BoxShape.circle),
    );
  }
}
