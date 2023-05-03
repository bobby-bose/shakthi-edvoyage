import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../utils/colors/colors.dart';

class EmailIcon extends StatefulWidget {
  const EmailIcon({Key? key}) : super(key: key);

  @override
  State<EmailIcon> createState() => _EmailIconState();
}

class _EmailIconState extends State<EmailIcon> {
  Screen ? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Icon(Icons.alternate_email_sharp,
      size: 25,
      color:primaryColor,
    );
  }
}

