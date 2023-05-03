import 'package:flutter/material.dart';
import 'package:login_aadi/screens/onboarding/screen_4.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/backgroundColor.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/backgroundImage.dart';
import 'package:login_aadi/widgets/dots/grey_dot.dart';
import 'package:login_aadi/widgets/dots/red_dot.dart';
import 'package:login_aadi/widgets/onboarding_button.dart';
import 'package:login_aadi/widgets/onboardingbold.dart';
import '../../widgets/skipButton.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
                    height: size?.hp(42),
                    // width: size?.wp(80),
                    child: Image.asset(onboarding3),
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
                            RedDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot()
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size?.hp(3),
                      ),
                      BoldText(text: "Medico's mutual friend"),
                      SizedBox(
                        height: size?.hp(3),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: size?.hp(14),
                        width: size?.wp(87),
                        child: Column(
                          children: [
                            LateBold(
                                text:
                                    'Keep all your medico friend and colleagues in a single hub, connect with them in our in-app messenger on the go.'),
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
                                          ScreenFour()));
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
