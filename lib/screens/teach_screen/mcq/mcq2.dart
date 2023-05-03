import 'package:flutter/material.dart';
import 'package:login_aadi/screens/teach_screen/mcq/mcq3.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/mcq_card.dart';

import '../../../utils/avatar.dart';
import '../tech_home_screen.dart';
import 'mcq_1.dart';

class McqTwo extends StatefulWidget {
  const McqTwo({Key? key}) : super(key: key);

  @override
  State<McqTwo> createState() => _McqTwoState();
}

class _McqTwoState extends State<McqTwo> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: .6,
          title: Container(
            width: size?.wp(35),
            child: Image.asset(companylogo),
          ),
          backgroundColor: thirdColor,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(left: 7),
              height: size?.hp(5),
              width: double.infinity,
              color: thirdColor,
              child: Row(
                children: [
                  Container(
                    width: size?.wp(7),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => TeachHome()));
                        },
                        child: Icon(
                          Icons.menu_book,
                          color: primaryColor,
                          size: 25,
                        )),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => McqOne()));
                    },
                    child: Row(
                      children: [
                        Text(
                          '/ ',
                          textScaleFactor: 1.3,
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'MCQ',
                          textScaleFactor: 1.3,
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '/',
                    textScaleFactor: 1.3,
                    style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    ' Human Anatomy',
                    textScaleFactor: 1.3,
                    style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            Container(
              height: size?.hp(83),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView(children: [
                SizedBox(
                  height: size?.hp(2),
                ),
                McqCard(
                  name: 'Gametogenesis',
                  textColor: primaryColor,
                  subColor: grey2,
                  model: Icon(Icons.lock_open_outlined, color: primaryColor),
                  text: 'FREE',
                  action: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => McqThree()));
                  },
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Epithelium',
                  textColor: grey1,
                  subColor: grey1,
                  model: Image.asset('assets/crown.png'),
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'History of Glance',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Muscle & Cartilages',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Spinal code',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Cerebellum',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Osteology',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Nose & Toungue',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Larynx & Pharynx',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Facial nerves',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(2),
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
