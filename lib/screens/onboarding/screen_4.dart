import 'package:flutter/material.dart';
import 'package:login_aadi/screens/login/login_screen.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/backgroundColor.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/backgroundImage.dart';
import 'package:login_aadi/widgets/dots/grey_dot.dart';
import 'package:login_aadi/widgets/dots/red_dot.dart';
import 'package:login_aadi/widgets/long_button.dart';
import 'package:login_aadi/widgets/onboardingbold.dart';

import '../sign up/sign_up.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Stack(
          children: [
            BackgroundColor(),
            BackgroundImage(),
            Column(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 80),
                    height: size?.hp(42),
                    // width: size?.wp(80),
                    child: Image.asset(onboarding4),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: size?.hp(57),
                ),
                Container(
                  height: size?.hp(43),
                  width: size?.wp(100),
                  decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(110),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size?.hp(3),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            RedDot(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size?.hp(3),
                      ),
                      BoldText(text: 'Interact with professionals'),
                      SizedBox(
                        height: size?.hp(3),
                      ),
                      Container(
                        alignment: Alignment.center,
                        // height: size?.hp(14),
                        width: size?.wp(87),
                        child: Column(
                          children: [
                            LateBold(
                                text:
                                    'Get your questions answered by some of the best lectures or doctors around the globe through the medico hub CAVITY.post your questions or doubts and engage with professionals.'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size?.hp(5),
                      ),
                      LongButton(
                        text: 'Get Started',
                        action: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => SignUp()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
