import 'package:flutter/material.dart';
import 'package:login_aadi/screens/teach_screen/mcq/mcq2.dart';
import 'package:login_aadi/utils/responsive.dart';
import '../../../utils/avatar.dart';
import '../../../utils/colors/colors.dart';
import '../../../widgets/subject_cards.dart';
import '../tech_home_screen.dart';

class McqOne extends StatefulWidget {
  const McqOne({Key? key}) : super(key: key);

  @override
  State<McqOne> createState() => _McqOneState();
}

class _McqOneState extends State<McqOne> {
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
                  width: size?.wp(2.7),
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
                  'MCQ',
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
                    height: size?.hp(1),
                  ),
                  SubjectCard(
                      text1: 'Human Anatomy',
                      text2: '10 Modules',
                      action: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => McqTwo()));
                      }),
                  SubjectCard(
                      text1: 'Physiology', text2: '10 Modules', action: () {}),
                  SubjectCard(
                      text1: 'Biochemistry',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Pharmacology',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Pathology', text2: '10 Modules', action: () {}),
                  SubjectCard(
                      text1: 'Microbiology',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Forensic Medicine and tocxicology',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Community Medicine',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'General Medicine',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Respiratory Medicine',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Pediatrics', text2: '10 Modules', action: () {}),
                  SubjectCard(
                      text1: 'Psychiatry', text2: '10 Modules', action: () {}),
                  SubjectCard(
                      text1: 'Dermatology,Venereology and Leprosy',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Physical Medicine and Rehabilitation',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'General surgery',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Ophthalmology',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Otorhinolaryngology',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Obstetrics and Gynaecology',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Orthopedics', text2: '10 Modules', action: () {}),
                  SubjectCard(
                      text1: 'Anesthesiology',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Radiodiagnosis',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Radiotherapy',
                      text2: '10 Modules',
                      action: () {}),
                  SubjectCard(
                      text1: 'Dentistry', text2: '10 Modules', action: () {}),
                  SizedBox(
                    height: size?.hp(1),
                  )
                ],
              )),
        ]),
      ),
    ));
  }
}
