import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:login_aadi/screens/Profile_screen/CreateProfile/socialLink.dart';
import 'package:login_aadi/screens/Profile_screen/CreateProfile/workDetails.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';
import '../teach_screen/video/demovdo/test.dart';
import '../teach_screen/video/demovdo/video_play.dart';
import '../../widgets/offer_card.dart';
import '../teach_screen/video/demovdo/new_vdo.dart';
import '../../widgets/sort_button.dart';

class Saving_screen extends StatefulWidget {
  @override
  _Saving_screenState createState() => _Saving_screenState();
}

class _Saving_screenState extends State<Saving_screen> {
  Screen? size;

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);

    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        color: titlecolor);
    return Scaffold(
      backgroundColor: White,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Cprimary,
            )),
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'De vo',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Cprimary)),
              TextSpan(
                  text: 'y',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: secondaryColor)),
              TextSpan(
                  text: 'age',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Cprimary)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vGap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Saved cards",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Text(
                      "List all credit card you saved ",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          color: textColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Container(
                  width: size?.wp(25),
                  height: size?.hp(5),
                  decoration: BoxDecoration(
                      color: Cprimary,
                      boxShadow: kElevationToShadow[2],
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: White,
                      ),
                      Text(
                        "Add New",
                        textScaleFactor: 1.1,
                        style: TextStyle(
                          color: White,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            vGap(20),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: grey1,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              hGap(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Visa xxxx 5247",
                                    style: labelTextStyle,
                                  ),
                                  Text(
                                    "Expires on 16/24",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: textColor,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            vGap(20),
            vGap(80),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LongButton(action: () {}, text: "Pay Now"),
            ),
          ],
        ),
      ),
    );
  }
}
