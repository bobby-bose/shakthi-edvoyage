import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class LockIcon extends StatelessWidget {
  const LockIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Icon(Icons.lock_outlined,
      color: primaryColor,
      size: 25,
    );
  }
}
