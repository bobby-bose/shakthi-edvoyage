import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_aadi/widgets/long_button.dart';

import '../UniversityScreen/Study_Abroad_Screen.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/long_arrow.dart';

class coursesTab extends StatefulWidget {
  @override
  _coursesTabState createState() => _coursesTabState();
}

class _coursesTabState extends State<coursesTab> {
  TextEditingController timeinput = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  @override
  void initState() {
    timeinput.text = "";
    dateinput.text = "";
    super.initState();
  }

  late int activeMeterIndex;
  final StreamController activeMeterIndexStreamControl =
      StreamController.broadcast();
  Stream get onUpdateActiveIndex => activeMeterIndexStreamControl.stream;
  void updateExpansionTile() =>
      activeMeterIndexStreamControl.sink.add(activeMeterIndex);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: Align(
      //   alignment: Alignment(0, 0.9),
      //   child: FloatingActionButton.extended(
      //     elevation: 4.0,
      //     label: const Text('Apply Now'),
      //     onPressed: () {},
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: color3,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Curriculum",
                          style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Cprimary),
                        ),
                        Divider(
                          thickness: 1,
                          color: grey2,
                        ),
                        LongArrow(),
                        LongArrow(),
                        LongArrow(),
                        LongArrow(),
                        LongArrow(),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Grand Total",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              hGap(25),
                              Text(
                                "\$4000",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: White),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Curriculum",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          color: Cprimary),
                    ),
                    Divider(
                      thickness: 1,
                      color: grey2,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int i) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 10.0,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: StreamBuilder(
                                      stream: onUpdateActiveIndex,
                                      builder: (context, snapShot) {
                                        return new ExpansionTile(
                                          title: Text(
                                            "1ST Year",
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          children: <Widget>[
                                            Divider(
                                              color: titlecolor,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: White),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Curriculum",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          color: Cprimary),
                    ),
                    Divider(
                      thickness: 1,
                      color: grey2,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int i) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 10.0,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: StreamBuilder(
                                      stream: onUpdateActiveIndex,
                                      builder: (context, snapShot) {
                                        return new ExpansionTile(
                                          title: Text(
                                            "1ST Year",
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          children: <Widget>[
                                            Divider(
                                              color: titlecolor,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25.0,
                                                  top: 10,
                                                  bottom: 10,
                                                  right: 18),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Subject",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Text(
                                                    "10",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        color: text5,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: White, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Eligibility",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          color: Cprimary),
                    ),
                    Divider(
                      thickness: 1,
                      color: grey2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 10, bottom: 10, right: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: Cprimary,
                          ),
                          hGap(15),
                          Text("NEET",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: text5))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 10, bottom: 10, right: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Cprimary,
                          ),
                          hGap(15),
                          Text("NEET",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: text5))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: White, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Required Documents",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto',
                          letterSpacing: 1,
                          fontWeight: FontWeight.w700,
                          color: Cprimary),
                    ),
                    Divider(
                      thickness: 1,
                      color: text5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 10, bottom: 10, right: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: Cprimary,
                          ),
                          hGap(15),
                          Text("Passport",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: text5))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 10, bottom: 10, right: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Cprimary,
                          ),
                          hGap(15),
                          Text("IELTS",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: text5))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 10, bottom: 10, right: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Cprimary,
                          ),
                          hGap(15),
                          Text("10Th Cart",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: text5))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 10, bottom: 10, right: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Cprimary,
                          ),
                          hGap(15),
                          Text("12Th Cart",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: text5))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 10, bottom: 10, right: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Cprimary,
                          ),
                          hGap(15),
                          Text("Visa",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: text5))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18.0, top: 10, bottom: 10, right: 18),
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel_outlined,
                            color: Cprimary,
                          ),
                          hGap(15),
                          Text("NEET")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            LongButton(
                action: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UniversitHomeScreen()));
                },
                text: 'Apply Now'),
          ],
        ),
      ),
    );
  }
}
