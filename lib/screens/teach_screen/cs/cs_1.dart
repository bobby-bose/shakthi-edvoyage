import 'package:flutter/material.dart';
import 'package:login_aadi/screens/teach_screen/tech_home_screen.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../../../utils/avatar.dart';
import '../../../utils/colors/colors.dart';
import '../../../widgets/subject_cards.dart';
import 'cs_2.dart';

class CsOne extends StatefulWidget {
  const CsOne({Key? key}) : super(key: key);

  @override
  State<CsOne> createState() => _CsOneState();
}

class _CsOneState extends State<CsOne> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey1,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: .6,
          backgroundColor: thirdColor,
          title: Container(
            width: size?.wp(35),
            child: Image.asset(companylogo),
          ),
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
                  SizedBox(
                    width: size?.wp(2),
                  ),
                  Text(
                    '/ ',
                    textScaleFactor: 1.3,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Clinical Case',
                    textScaleFactor: 1.3,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            Container(
                height: size?.hp(86),
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: [
                    SizedBox(
                      height: size?.hp(.5),
                    ),
                    SubjectCard(
                        text1: 'Oral Cavity Examination',
                        text2: 'Dr.Ranchodas Chanchad',
                        action: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => CsTwo()));
                        }),
                    SubjectCard(
                        text1: 'Auscultation Examination',
                        text2: 'Dr.Ranchodas Chanchad',
                        action: () {}),
                    SubjectCard(
                        text1: 'Pneumonia Examination',
                        text2: 'Dr.Ranchodas Chanchad',
                        action: () {}),
                    SubjectCard(
                        text1: 'Renel System Examination',
                        text2: 'Dr.Ranchodas Chanchad',
                        action: () {}),
                    SubjectCard(
                        text1: 'Heart Functioning Examination',
                        text2: 'Dr.Ranchodas Chanchad',
                        action: () {}),
                    SubjectCard(
                        text1: 'Retina Examination',
                        text2: 'Dr.Ranchodas Chanchad',
                        action: () {}),
                    SubjectCard(
                        text1: 'Limb Examination',
                        text2: 'Dr.Ranchodas Chanchad',
                        action: () {}),
                    SubjectCard(
                        text1: 'Nervous Sysytem Examination',
                        text2: 'Dr.Ranchodas Chanchad',
                        action: () {}),
                    SizedBox(
                      height: size?.hp(1),
                    )
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
