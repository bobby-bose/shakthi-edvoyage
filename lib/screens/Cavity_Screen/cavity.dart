import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:http/http.dart' as http;
import '../../_Models/get_like.dart';
import '../../_Services/api/api_client.dart';
import '../../_env/locator.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import 'chatscreens/home.dart';
import 'chatscreens/search_screen.dart';

class Cavity_screen extends StatefulWidget {
  @override
  State<Cavity_screen> createState() => _Cavity_screenState();
}

class _Cavity_screenState extends State<Cavity_screen> {
  var isPressed = false;
  var isbookmark = false;
  var selectedIndex;
  Color color2 = Color.fromARGB(255, 97, 75, 75);
  Color color1 = Color.fromARGB(255, 34, 163, 29);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => searchScreen()));
                    },
                    icon: Image.asset("assets/search.png")),
                hGap(15),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => chatHome()));
                    },
                    icon: Image.asset("assets/message.png"))
              ],
            ),
          )
        ],
        backgroundColor: whiteColor,
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Cavit',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color(0xFF025839))),
              TextSpan(
                  text: 'y',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 189, 18, 18))),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Ctext2,
        ),
        child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            primary: false,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                          // isThreeLine: true,
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/Ellipse.png"),
                          ),
                          title: Row(
                            children: [
                              Text(
                                "Samuel Sam",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              hGap(5),
                              Icon(
                                Icons.star,
                                color: Cprimary,
                              )
                              // Image.asset("assets/images/Vector.png")
                            ],
                          ),
                          subtitle: Text(
                            ".\ Medical Student",
                            style: TextStyle(
                                fontFamily: 'Roboto', color: Colors.black),
                          ),
                          trailing: Icon(Icons.more_vert)),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 40, right: 30, top: 25, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Anyone know the right answer?",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.5,
                                  height: 1.5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            vGap(20),
                            Text(
                              "What Is Common To Lantana Eichhornia And African Catfish?",
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  height: 1.5,
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            vGap(20),
                            Text(
                              "A. All are keystone species",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.5,
                                  height: 1.5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            vGap(20),
                            Text(
                              "B. All the endangered species of India",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            vGap(20),
                            Text(
                              "C. All the species are neither threatened nor indigenous species of India",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.5,
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400),
                            ),
                            vGap(20),
                            Text(
                              "D. All mammals found in India",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.5,
                                  height: 1.5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: titlecolor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20, top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isPressed = !isPressed;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.thumb_up,
                                    color: isPressed ? color1 : color2,
                                  ),
                                ),
                                hGap(10),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isPressed =
                                          !isPressed; // Toggle the value of isPressed
                                    });
                                  },
                                  icon: Icon(
                                    Icons.message_outlined,
                                    color: Cprimary,
                                  ),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    isbookmark = !isbookmark;
                                    print(isPressed);
                                  });
                                },
                                color: Cprimary,
                                icon: Icon(
                                  Icons.bookmark,
                                  color: isbookmark ? color1 : color2,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Align(
        alignment: Alignment(1, 1),
        child: FloatingActionButton(
          // isExtended: true,
          child: Icon(Icons.add),
          backgroundColor: secondaryColor,
          onPressed: () {
            displayModalBottomSheet(context);
          },
        ),
      ),
    );
  }

  void displayModalBottomSheet(context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: whiteColor,
            ),
            height: getHeight(context) / 5,
            child: Column(
              children: [
                Container(
                  height: 8,
                  width: 60,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cblack10,
                  ),
                ),
                vGap(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: getHeight(context) / 11,
                      width: getWidth(context) / 4,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cblack10,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.book_online,
                              size: 30,
                            ),
                            vGap(10),
                            Text(
                              "Save",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: titlecolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: getHeight(context) / 10,
                      width: getWidth(context) / 4,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cblack10,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform.rotate(
                              angle: -math.pi / 2,
                              child: IconButton(
                                icon: Icon(
                                  Icons.logout,
                                  color: titlecolor,
                                ),
                                onPressed: null,
                              ),
                            ),
                            Text(
                              "Share",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: titlecolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: getHeight(context) / 10,
                      width: getWidth(context) / 4,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: cblack10,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.report_outlined,
                              color: secondaryColor,
                              size: 25,
                            ),
                            vGap(10),
                            Text(
                              "Report",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: secondaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
