import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../_Models/mcq.dart';
import '../Timer_screen/timer_one.dart';

import '../UniversityScreen/Study_Abroad_Screen.dart';
import '../exploreUniversity_screen/exploreCoursesTab.dart';
import '../notification/notification.dart';
import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/long_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<MCQinitialget> getMCQApi() async {
    final response = await http.get(Uri.parse(
        'https://vass-edutech.vercel.app/api/v1/education/mcqinitial'));
    var universitydata = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return MCQinitialget.fromJson(universitydata);
    } else {
      return MCQinitialget.fromJson(universitydata);
    }
  }

  int? selectedValue1;

  void onChange1(int value) {
    setState(() {
      selectedValue1 = value;
    });
  }

  var selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cblack10,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'De vo',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: primaryColor)),
              TextSpan(
                  text: 'y',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: secondaryColor)),
              TextSpan(
                  text: 'age',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: primaryColor))
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  icon: Icon(
                    Icons.lock_clock,
                    color: primaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TimerOne()));
                  }),
              IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: primaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NotificationScreen()));
                  }),
            ],
          )
        ],
      ),
      // drawer: DrawerWidget(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 10),
            Expanded(
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
                  height: getHeight(context) / 20,
                  child: Image.asset(
                    "assets/Mood_Analyser.png",
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: White, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Explore Courses & Universities",
                        style: TextStyle(
                            fontFamily: 'Popins',
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: primaryColor),
                      ),
                    ),

                    Container(
                        height: getHeight(context) / 6.5,
                        child: Row(
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color: grey2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              universityimage,
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "300 +",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: titlecolor),
                                            ),
                                            vGap(5),
                                            Text("Universities",
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ],
                                        ),
                                      ),
                                    ))),
                            Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Card(
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(color: grey2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              coursesimage,
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "30,000 +",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: titlecolor),
                                            ),
                                            vGap(5),
                                            Text("Courses",
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ],
                                        ),
                                      ),
                                    )))
                          ],
                        )),
                    // UniversitHomeScreen()

                    LongButton(
                        action: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExploreCourses()));
                        },
                        text: 'Explore Now'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder<MCQinitialget>(
                  future: getMCQApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data!.data.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18.0, top: 8, bottom: 8),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                        color: White,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "MCQ of the day",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w800,
                                              color: Cprimary),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: grey2,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            snapshot.data!.data[index].question,
                                            style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w800,
                                                fontSize: 19),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: getHeight(context) / 14,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  border:
                                                      Border.all(color: grey2)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                        child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: 'A - ',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color:
                                                                    darkblack,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          TextSpan(
                                                            text: snapshot
                                                                .data!
                                                                .data[index]
                                                                .option_1,
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color:
                                                                    darkblack,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: getHeight(context) / 14,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  border:
                                                      Border.all(color: grey2)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                        child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: 'B - ',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color:
                                                                    darkblack,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800),
                                                          ),
                                                          TextSpan(
                                                            text: snapshot
                                                                .data!
                                                                .data[index]
                                                                .option_2,
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color:
                                                                    darkblack,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: getHeight(context) / 14,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  border:
                                                      Border.all(color: grey2)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                        child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: 'C - ',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color:
                                                                    darkblack,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800),
                                                          ),
                                                          TextSpan(
                                                            text: snapshot
                                                                .data!
                                                                .data[index]
                                                                .option_3,
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                color:
                                                                    darkblack,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800),
                                                          ),
                                                        ],
                                                      ),
                                                    )),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              height: getHeight(context) / 14,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  border:
                                                      Border.all(color: grey2)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: <TextSpan>[
                                                            TextSpan(
                                                              text: 'D - ',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  color:
                                                                      darkblack,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800),
                                                            ),
                                                            TextSpan(
                                                              text: snapshot
                                                                  .data!
                                                                  .data[index]
                                                                  .option_4,
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  color:
                                                                      darkblack,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 1,
                                          color: titlecolor,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8, bottom: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    selectedIndex = true;
                                                  });
                                                },
                                                child: ImageIcon(
                                                  AssetImage(
                                                    "assets/bookmark.png",
                                                  ),
                                                  color: (selectedIndex == true)
                                                      ? Cprimary
                                                      : Color(0xff9A9A9A),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    } else {
                      return Center(
                          child: CircularProgressIndicator(
                        color: Cprimary,
                        backgroundColor: secondaryColor,
                      ));
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
