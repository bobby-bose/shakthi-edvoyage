import 'package:flutter/material.dart';
import 'package:login_aadi/screens/Timer_screen/timer_one.dart';
import 'package:login_aadi/screens/teach_screen/cs/cs_1.dart';
import 'package:login_aadi/screens/teach_screen/fc/fc_1.dart';
import 'package:login_aadi/screens/teach_screen/video/video_1.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/teach_card.dart';

import '../ErrorScreen/error_screen.dart';
import '../../utils/avatar.dart';
import 'mcq/mcq_1.dart';

class TeachHome extends StatefulWidget {
  const TeachHome({Key? key}) : super(key: key);

  @override
  State<TeachHome> createState() => _TeachHomeState();
}

class _TeachHomeState extends State<TeachHome> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey1,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: thirdColor,
          elevation: .6,
          title: Container(
            width: size?.wp(35),
            child: Image.asset(companylogo),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.5, top: 2.5),
                width: double.infinity,
                height: size?.hp(5),
                color: thirdColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book_outlined,
                      color: primaryColor,
                      size: 25,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Cprimary,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TimerOne()));
                      },
                    ),
                  ],
                ),
              ),
              Container(
                  height: size?.hp(85),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: size?.wp(1.5),
                      ),
                      TeachCard(
                        text1: 'Videos',
                        text2: '23 Topics',
                        text3: '200 Vidoes',
                        action: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => VideoOne()));
                        },
                      ),
                      TeachCard(
                        text1: 'MCQ',
                        text2: '23 Topics',
                        text3: '230 Vidoes',
                        action: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => McqOne()));
                        },
                      ),
                      TeachCard(
                        text1: 'Clinical Case',
                        text2: '23 Topics',
                        text3: '230 Vidoes',
                        action: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => CsOne()));
                        },
                      ),
                      TeachCard(
                        text1: 'Q-Bank',
                        text2: '23 Topics',
                        text3: '230 Vidoes',
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ErrorScreen())));
                        },
                      ),
                      TeachCard(
                        text1: 'Flash Card',
                        text2: '23 Topics',
                        text3: '230 Vidoes',
                        action: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => FcOne()));
                        },
                      ),
                      TeachCard(
                        text1: 'Prev Qn Paper',
                        text2: '23 Topics',
                        text3: '230 Vidoes',
                        action: () {},
                      ),
                      SizedBox(
                        height: size?.wp(2),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
