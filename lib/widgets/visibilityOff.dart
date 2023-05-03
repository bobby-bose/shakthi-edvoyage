import 'package:flutter/material.dart';

import '../utils/colors/colors.dart';

class VisibilityOff extends StatelessWidget {
  const VisibilityOff({Key? key}) : super(key: key);
final visibility=true;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        VisibilityOn();
      },
      icon: Icon(Icons.visibility_off_outlined,
      color: grey2,
      size: 30,
      ),
    );
  }
}

class VisibilityOn extends StatelessWidget {
  const VisibilityOn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        VisibilityOff();
      },
      icon: Icon(Icons.visibility_outlined,
      color: grey2,
      size: 30,
      ),
    );
  }
}

