import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import '../../_Models/university_list.dart';
import '../../utils/BottomNavigation/bottom_navigation.dart';
import '../home_screen/CourseDetails.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../UniversityScreen/Study_Abroad_Screen.dart';
import '../sort_screens/sort_home.dart';

class ExploreCourses extends StatefulWidget {
  @override
  _ExploreCoursesState createState() => _ExploreCoursesState();
}

class _ExploreCoursesState extends State<ExploreCourses> {
  Future<UniversityList> getUniversityListtApi() async {
    final response = await http.get(Uri.parse(
        'https://vass-edutech.vercel.app/api/v1/education/university'));
    var universitydata = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return UniversityList.fromJson(universitydata);
    } else {
      return UniversityList.fromJson(universitydata);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  double? _rating;
  IconData? _selectedIcon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color3,
      appBar: AppBar(
        primary: false,
        toolbarHeight: 90.0,
        backgroundColor: White,
        title: Container(
          height: 35,
          child: TextFormField(
            decoration: InputDecoration(
              // enabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(
              //       width: 3, color: Colors.greenAccent), //<-- SEE HERE
              // ),
              fillColor: cblack10,
              filled: true,
              isDense: true,
              contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              hintText: "Search University or Course",
              hintStyle: TextStyle(fontFamily: 'Poppins', color: textColor),
              prefixIcon: Icon(Icons.search, color: iconcolor, size: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: BorderSide(color: grey2),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: cblack10)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: BorderSide(color: grey2),
              ),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Cprimary,
            ),
          ),
        ),
        actions: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SortHome()));
                },
                icon: Image.asset("assets/filter.png")),
          )),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<UniversityList>(
              future: getUniversityListtApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: getHeight(context) / 6.5,
                            child: Card(
                              semanticContainer: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                                "assets/tver-state-medical-university-logo 1.png"),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                snapshot.data!.data[index]
                                                    .univesityName
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'Roboto',
                                                    color: Cprimary,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                snapshot
                                                    .data!.data[index].location
                                                    .toString(),
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontFamily: 'Roboto',
                                                    color: ttext,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            vGap(15),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Estd : ",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 15,
                                                        color: ttext,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Text(
                                                    snapshot.data!.data[0]
                                                        .establishedYear
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily: 'Roboto',
                                                        color: ttext,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Text(
                                                    "DV Rank",
                                                    style: TextStyle(
                                                        fontFamily: 'Roboto',
                                                        fontSize: 15,
                                                        color: ttext,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                hGap(10),
                                                RatingBar.builder(
                                                  initialRating: _rating ?? 0.0,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemSize: 18,
                                                  itemPadding: const EdgeInsets
                                                      .symmetric(horizontal: 0),
                                                  itemBuilder: (context, _) =>
                                                      Icon(
                                                    _selectedIcon ?? Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    _rating = rating;
                                                    setState(() {});
                                                  },
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(
                                          Icons.bookmark_outline_sharp,
                                          color: ttext2,
                                          size: 30,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        UniversitHomeScreen()));
                                          },
                                          // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),CourseDetails
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 27, vertical: 17),
                                              backgroundColor: secondaryColor,
                                              elevation: 2.0,
                                              textStyle: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.white)),
                                          child: const Text('View'),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return Center(
                      child: CircularProgressIndicator(
                    color: Cprimary,
                    backgroundColor: secondaryColor,
                  ));
                }
              })),
      // bottomNavigationBar: BottomNavigation(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:intl/intl.dart';

// import '../screens/asasasas.dart';
// import '../utils/colors.dart';
// import '../utils/space.dart';

// class remainderList2 extends StatefulWidget {
//   @override
//   _remainderList2State createState() => _remainderList2State();
// }

// class _remainderList2State extends State<remainderList2> {
//   TextEditingController timeinput = TextEditingController();
//   TextEditingController dateinput = TextEditingController();
//   @override
//   void initState() {
//     timeinput.text = "";
//     dateinput.text = "";
//     super.initState();
//   }

//   double? _rating;
//   IconData? _selectedIcon;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: color3,
//       body: ListView.builder(
//         itemCount: 1,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Card(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15)),
//                   elevation: 5,
//                   child: Padding(
//                     padding: const EdgeInsets.all(18.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Expanded(
//                           child: Row(
//                             children: [
//                               Container(
//                                   alignment: Alignment.topLeft,
//                                   width: getWidth(context) / 6,
//                                   height: getHeight(context) / 15,
//                                   child: Image.asset(
//                                       "assets/images/tver-logo.png")),
//                               Flexible(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     // Row(
//                                     //   children: [
//                                     //     Row(
//                                     //       children: List.generate(
//                                     //           100 ~/ 10,
//                                     //           (index) => Expanded(
//                                     //                 child: Container(
//                                     //                   color: index % 2 == 0
//                                     //                       ? Colors.transparent
//                                     //                       : Colors.grey,
//                                     //                   height: 1,
//                                     //                 ),
//                                     //               )),
//                                     //     ),
//                                     //     Text("Devoyage"),
//                                     //     Row(
//                                     //       children: List.generate(
//                                     //           1 ~/ 10,
//                                     //           (index) => Expanded(
//                                     //                 child: Container(
//                                     //                   color: index % 2 == 0
//                                     //                       ? Colors.transparent
//                                     //                       : Colors.grey,
//                                     //                   height: 2,
//                                     //                 ),
//                                     //               )),
//                                     //     ),
//                                     //   ],
//                                     // ),
//                                     Text(
//                                       "Lorem Ipsum",
//                                       style: TextStyle(
//                                           fontSize: 16,
//                                           color:
//                                               Color.fromARGB(255, 25, 117, 28),
//                                           fontWeight: FontWeight.w500),
//                                     ),
//                                     Text(
//                                       "Lorem Ipsum",
//                                       style: TextStyle(
//                                           fontSize: 14,
//                                           color:
//                                               Color.fromARGB(255, 25, 117, 28),
//                                           fontWeight: FontWeight.w400),
//                                     ),
//                                     vGap(15),
//                                     Text(
//                                       "Lorem Ipsum",
//                                       style: TextStyle(
//                                           fontSize: 16,
//                                           color:
//                                               Color.fromARGB(255, 25, 117, 28),
//                                           fontWeight: FontWeight.w500),
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Lorem Ipsum",
//                                           style: TextStyle(
//                                               fontSize: 14,
//                                               color: Color.fromARGB(
//                                                   255, 25, 117, 28),
//                                               fontWeight: FontWeight.w400),
//                                         ),
//                                         hGap(10),
//                                         RatingBar.builder(
//                                           initialRating: _rating ?? 0.0,
//                                           minRating: 1,
//                                           direction: Axis.horizontal,
//                                           allowHalfRating: true,
//                                           itemCount: 5,
//                                           itemSize: 10,
//                                           itemPadding:
//                                               const EdgeInsets.symmetric(
//                                                   horizontal: 0),
//                                           itemBuilder: (context, _) => Icon(
//                                             _selectedIcon ?? Icons.star,
//                                             color: Colors.amber,
//                                           ),
//                                           onRatingUpdate: (rating) {
//                                             _rating = rating;
//                                             setState(() {});
//                                           },
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           children: [
//                             Icon(Icons.bookmark_outline_sharp),
//                             vGap(15),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => asasas()));
//                               },
//                               // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: VIPtext,
//                                   elevation: 12.0,
//                                   textStyle:
//                                       const TextStyle(color: Colors.white)),
//                               child: const Text('View'),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 Card(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15)),
//                   elevation: 5,
//                   child: Padding(
//                     padding: const EdgeInsets.all(18.0),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Expanded(
//                               child: Row(
//                                 children: [
//                                   Flexible(
//                                     child: Row(
//                                       children: [
//                                         Container(
//                                             alignment: Alignment.topLeft,
//                                             width: getWidth(context) / 6,
//                                             height: getHeight(context) / 15,
//                                             child: Image.asset(
//                                                 "assets/images/tver-logo.png")),
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "Lorem Ipsum",
//                                               style: TextStyle(
//                                                   fontSize: 16,
//                                                   color: Color.fromARGB(
//                                                       255, 25, 117, 28),
//                                                   fontWeight: FontWeight.w500),
//                                             ),
//                                             Text(
//                                               "Lorem Ipsum",
//                                               style: TextStyle(
//                                                   fontSize: 14,
//                                                   color: Color.fromARGB(
//                                                       255, 25, 117, 28),
//                                                   fontWeight: FontWeight.w400),
//                                             ),
//                                             vGap(15),
//                                             Text(
//                                               "Lorem Ipsum",
//                                               style: TextStyle(
//                                                   fontSize: 16,
//                                                   color: Color.fromARGB(
//                                                       255, 25, 117, 28),
//                                                   fontWeight: FontWeight.w500),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 Icon(Icons.bookmark_outline_sharp),
//                                 vGap(15),
//                               ],
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Expanded(
//                               child: TextField(
//                                 controller: timeinput,
//                                 decoration: InputDecoration(
//                                     fillColor: Ctext2,
//                                     filled: true,
//                                     isDense: true,
//                                     hintText: "Duration",
//                                     contentPadding:
//                                         EdgeInsets.fromLTRB(10, 5, 5, 0),
//                                     icon: Icon(
//                                       Icons.timer,
//                                       color: Cprimary,
//                                     ),
//                                     labelText: "60 Months"),
//                                 readOnly: true,
//                                 onTap: () async {
//                                   TimeOfDay? pickedTime = await showTimePicker(
//                                     initialTime: TimeOfDay.now(),
//                                     context: context,
//                                   );

//                                   if (pickedTime != null) {
//                                     print(pickedTime.format(context));
//                                     DateTime parsedTime = DateFormat.jm().parse(
//                                         pickedTime.format(context).toString());
//                                     print(parsedTime);
//                                     String formattedTime =
//                                         DateFormat('HH:mm:ss')
//                                             .format(parsedTime);
//                                     print(formattedTime);
//                                     setState(() {
//                                       timeinput.text = formattedTime;
//                                     });
//                                   } else {
//                                     print("Time is not selected");
//                                   }
//                                 },
//                               ),
//                             ),
//                             hGap(5),
//                             Expanded(
//                                 child: TextField(
//                               controller: dateinput,
//                               decoration: InputDecoration(
//                                   fillColor: Ctext2,
//                                   filled: true,
//                                   hintText: "Intake",
//                                   counterStyle: TextStyle(color: Cprimary),
//                                   isDense: true,
//                                   contentPadding:
//                                       EdgeInsets.fromLTRB(10, 5, 10, 0),
//                                   icon: Icon(
//                                     Icons.calendar_today,
//                                     color: Cprimary,
//                                   ),
//                                   labelText: "Fall/Spring"),
//                               readOnly: true,
//                               onTap: () async {
//                                 DateTime? pickedDate = await showDatePicker(
//                                     context: context,
//                                     initialDate: DateTime.now(),
//                                     firstDate: DateTime(2000),
//                                     lastDate: DateTime(2101));

//                                 if (pickedDate != null) {
//                                   print(pickedDate);
//                                   String formattedDate =
//                                       DateFormat('yyyy-MM-dd')
//                                           .format(pickedDate);
//                                   setState(() {
//                                     dateinput.text = formattedDate;
//                                   });
//                                 } else {
//                                   print("Date is not selected");
//                                 }
//                               },
//                             )),
//                             hGap(20),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => asasas()));
//                               },
//                               // style: ButtonStyle(elevation: MaterialStateProperty(12.0 )),
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: VIPtext,
//                                   elevation: 12.0,
//                                   textStyle:
//                                       const TextStyle(color: Colors.white)),
//                               child: const Text('View'),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
