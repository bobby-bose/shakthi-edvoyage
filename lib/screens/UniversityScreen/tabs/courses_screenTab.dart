import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import '../../home_screen/CourseDetails.dart';
import '../../../../utils/colors/colors.dart';
import '../../../../utils/responsive.dart';
import '../../../_Models/course_list.dart';

class CoursesScreenTab extends StatefulWidget {
  @override
  _CoursesScreenTabState createState() => _CoursesScreenTabState();
}

class _CoursesScreenTabState extends State<CoursesScreenTab> {
  Future<CourseList> getCourselistApi() async {
    final response = await http.get(
        Uri.parse('https://vass-edutech.vercel.app/api/v1/education/course'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return CourseList.fromJson(data);
    } else {
      return CourseList.fromJson(data);
    }
  }

  double? _rating;
  IconData? _selectedIcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color3,
      body: FutureBuilder<CourseList>(
          future: getCourselistApi(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            alignment: Alignment.topLeft,
                                            width: getWidth(context) / 6,
                                            height: getHeight(context) / 15,
                                            child: Image.asset(
                                                "assets/tver-state-medical-university-logo 1.png")),
                                        Flexible(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    snapshot.data!.data[index]
                                                        .courseName,
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 16,
                                                        color: Cprimary,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  Icon(Icons
                                                      .bookmark_outline_sharp),
                                                ],
                                              ),
                                              Text(
                                                snapshot.data!.data[index]
                                                    .univesityName
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Roboto',
                                                    color: Cprimary,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                snapshot
                                                    .data!.data[index].location,
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 14,
                                                    color: Cprimary,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    vGap(10),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock_clock,
                                              size: 30,
                                              color: Cprimary,
                                            ),
                                            hGap(10),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  snapshot.data!.data[index]
                                                      .courseDuration,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      color: Cprimary,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                vGap(5),
                                                Text(
                                                  "Duration",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        hGap(15),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              size: 30,
                                              color: Cprimary,
                                            ),
                                            hGap(10),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  snapshot
                                                      .data!.data[index].intake,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      color: Cprimary,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                vGap(5),
                                                Text(
                                                  "Intake",
                                                  style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        hGap(110),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CourseDetails()));
                                          },
                                          // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: secondaryColor,
                                              elevation: 12.0,
                                              textStyle: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  color: Colors.white)),
                                          child: const Text('View'),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
    );
  }
}
