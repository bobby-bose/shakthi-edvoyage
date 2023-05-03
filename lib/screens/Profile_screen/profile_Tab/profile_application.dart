import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';

class ProfileApplication extends StatefulWidget {
  @override
  _ProfileApplicationState createState() => _ProfileApplicationState();
}

class _ProfileApplicationState extends State<ProfileApplication> {
  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        color: titlecolor);
    return Scaffold(
      backgroundColor: cblack10,
      body: Center(
        child: Text(
          "--------- De voyage --------",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              color: grey3),
        ),
      ),
    );
  }
}
