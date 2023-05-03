import 'package:flutter/material.dart';
import 'package:login_aadi/screens/overseas/overseas2.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/widgets/dots/blackdot.dart';
import '../../utils/responsive.dart';

class OverseasOne extends StatefulWidget {
  const OverseasOne({Key? key}) : super(key: key);

  @override
  State<OverseasOne> createState() => _OverseasOneState();
}

class _OverseasOneState extends State<OverseasOne> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
        child: Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        backgroundColor: thirdColor,
        elevation: .3,
        title: Text(
          'Study Abroad',
          textScaleFactor: 1.3,
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: size?.hp(29),
            width: size?.wp(53),
            child: Image.asset(overseas1),
          ),
          SizedBox(
            height: size?.hp(4),
          ),
          Text(
            'Overseas Study Expert',
            textScaleFactor: 1.4,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          SizedBox(
            height: size?.hp(4),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: size?.hp(25),
                width: size?.wp(60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        BlackDot(),
                        SizedBox(
                          width: size?.wp(3),
                        ),
                        Text(
                          'Planning to study MBBS abroad?',
                          textScaleFactor: 0.97,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: fourthColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            BlackDot(),
                            SizedBox(
                              width: size?.wp(3),
                            ),
                            Expanded(
                              child: Text(
                                'But unsure which university would be the best-fit for you?',
                                textScaleFactor: .97,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: fourthColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            BlackDot(),
                            SizedBox(
                              width: size?.wp(3),
                            ),
                            Expanded(
                              child: Text(
                                'Devoyage experts will guide on every step in your journey.',
                                textScaleFactor: .97,
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: fourthColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            BlackDot(),
                            SizedBox(
                              width: size?.wp(3),
                            ),
                            Text(
                              'Start with our course finder and',
                              textScaleFactor: .97,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: fourthColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: size?.wp(4.2),
                            ),
                            Text(
                              'schedule a slot with a counsellor',
                              textScaleFactor: .97,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: fourthColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: size?.hp(4),
          ),
          Container(
            width: size?.wp(53),
            height: size?.hp(5),
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => OverseasTwo()));
              },
              child: Text(
                'Begin',
                textScaleFactor: 1,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: thirdColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
