import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../../utils/colors/colors.dart';

class RedDot extends StatefulWidget {
  const RedDot({Key? key}) : super(key: key);

  @override
  State<RedDot> createState() => _RedDotState();
}

class _RedDotState extends State<RedDot> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Container(
      height: size?.hp(1),
      width: size?.wp(13),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
