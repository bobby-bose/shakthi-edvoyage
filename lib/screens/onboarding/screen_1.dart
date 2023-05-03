import 'package:flutter/material.dart';
import 'package:login_aadi/screens/onboarding/screen_2.dart';
import 'package:login_aadi/utils/colors/backgroundColor.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/widgets/backgroundImage.dart';
import 'package:login_aadi/widgets/dots/grey_dot.dart';
import 'package:login_aadi/widgets/dots/red_dot.dart';
import 'package:login_aadi/widgets/onboarding_button.dart';
import 'package:login_aadi/widgets/onboardingbold.dart';
import '../../widgets/skipButton.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  Screen? size;

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: primaryColor,
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
                    height: size?.hp(50),
                    child: Image.asset(onboarding1),
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
                            RedDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size?.hp(3),
                      ),
                      BoldText(text: 'Crack your exam confidently'),
                      SizedBox(
                        height: size?.hp(3),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: size?.hp(14),
                        width: size?.wp(87),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            LateBold(
                                text:
                                    'Through our well-crafted teaching content from videos, clinical case, mcq, train yourself for the NEXT and NEET exam confidently.'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size?.hp(4),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SkipButton(),
                            OnboardingButton(action: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          ScreenTwo()));
                            })
                          ],
                        ),
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
