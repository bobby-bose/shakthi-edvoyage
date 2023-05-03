import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:http/http.dart' as http;
import '../../../_Models/mcq.dart';

class McqThree extends StatefulWidget {
  const McqThree({Key? key}) : super(key: key);

  @override
  State<McqThree> createState() => _McqThreeState();
}

Widget McqText(String text) {
  return Text(
    text,
    textScaleFactor: 1.1,
    style: TextStyle(
        fontFamily: 'Roboto', color: fourthColor, fontWeight: FontWeight.w400),
  );
}

QText(String text) {
  return Text(
    text,
    textScaleFactor: 1.45,
    style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w500),
  );
}

class _McqThreeState extends State<McqThree> {
  Future<MCQinitialget> getFeedListApi() async {
    final response = await http.get(Uri.parse(
        'https://vass-edutech.vercel.app/api/v1/education/mcqinitial'));
    var mcqdata = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return MCQinitialget.fromJson(mcqdata);
    } else {
      return MCQinitialget.fromJson(mcqdata);
    }
  }

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Divider(
              color: primaryColor,
              thickness: size?.hp(1),
              height: size?.hp(1),
            ),
            SizedBox(
              height: size?.hp(1),
            ),
            Stack(children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Text(
                    'Gametogensis',
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(grey2),
                        shape: MaterialStateProperty.all(CircleBorder()),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close, color: thirdColor, size: 20)),
                ],
              )
            ]),
            SizedBox(
              height: size?.hp(2),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QText('Which of these is a major difference'),
                ],
              ),
            ),
            SizedBox(
              height: size?.hp(30.75),
            ),
            Container(
              height: size?.hp(36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size?.hp(8),
                    width: size?.wp(95),
                    decoration: BoxDecoration(
                      color: thirdColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            McqText(
                                '  A - Spermatogenesis leads to two sperm, while'),
                            McqText('  oogenesis leads to one egg.')
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size?.hp(8),
                    width: size?.wp(95),
                    decoration: BoxDecoration(
                      color: thirdColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            McqText('  B - oogenesis leads to four eggs while'),
                            McqText('  spermatogenesis leads to eight sperm.'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size?.hp(8),
                    width: size?.wp(95),
                    decoration: BoxDecoration(
                      color: thirdColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            McqText(
                                '  C - Spermatogenesis leads to four sperm, while'),
                            McqText('  oogenesis leads to one egg.'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size?.hp(8),
                    width: size?.wp(95),
                    decoration: BoxDecoration(
                      color: thirdColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            McqText('  D - oogenesis leads to two eggs while'),
                            McqText('  spermatogenesis leads to one sperm.'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: size?.hp(8),
              width: double.infinity,
              color: thirdColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    width: size?.hp(11),
                    height: size?.wp(8),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                      ),
                      onPressed: () {},
                      child: Text(
                        'PREV',
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: thirdColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    '1 / 20',
                    textScaleFactor: 1.1,
                    style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 12),
                    width: size?.hp(11),
                    height: size?.wp(8),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                      ),
                      onPressed: () {},
                      child: Text(
                        'NEXT',
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: thirdColor,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
