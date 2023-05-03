import 'package:flutter/material.dart';
import 'package:login_aadi/screens/overseas/oversease3.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/universityCard.dart';

class OverseasTwo extends StatefulWidget {
  const OverseasTwo({Key? key}) : super(key: key);

  @override
  State<OverseasTwo> createState() => _OverseasTwoState();
}

class _OverseasTwoState extends State<OverseasTwo> {
  Screen? size;
  var changing1 = false;
  var changing2 = false;
  var changing3 = false;
  var changing4 = false;
  var vis1 = false;
  var vis2 = false;
  var vis3 = false;
  var vis4 = false;
  var container_visibility = false;
  var borderbool1 = true;
  var borderbool2 = true;
  var borderbool3 = true;
  var borderbool4 = true;

  @override
  Widget build(BuildContext context) {
    print(vis1);
    print(vis2);
    print(vis3);
    print(vis4);
    print("container_visibility");
    print(container_visibility);
    print("------------------");

    size = Screen(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: grey1,
        appBar: AppBar(
          backgroundColor: thirdColor,
          elevation: .2,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: primaryColor),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Study Abroad',
            textScaleFactor: 1.3,
            style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: size?.hp(11),
                color: thirdColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.stars_sharp,
                                  color: secondaryColor,
                                  size: 27.5,
                                ),
                                Text(
                                  'Shortlist Universities',
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: size?.hp(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondaryColor,
                            ),
                            child: Visibility(
                              visible: container_visibility,
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          OverSeaseThree(),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 20,
                                  color: thirdColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CountryButton(
                            text: 'Russia',
                            buttonColor: primaryColor,
                            textColor: thirdColor),
                        CountryButton(
                            text: 'Georgia',
                            buttonColor: grey2,
                            textColor: grey1),
                        CountryButton(
                            text: 'Armenia',
                            buttonColor: grey2,
                            textColor: grey1),
                        CountryButton(
                            text: 'USA', buttonColor: grey2, textColor: grey1),
                        CountryButton(
                            text: 'Canada',
                            buttonColor: grey2,
                            textColor: grey1),
                        CountryButton(
                            text: 'UK', buttonColor: grey2, textColor: grey1),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: size?.hp(79),
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: ListView(
                  children: [
                    SizedBox(
                      height: size?.hp(1),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '9 results',
                          textScaleFactor: .9,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: grey2,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size?.hp(1),
                    ),
                    UniversityCard(
                        image: 'assets/university1.png',
                        title: 'Tver State Medical University',
                        subTitle: 'Tver,Russia',
                        text1: '5178',
                        text1_2: 'World rank',
                        text2: 'Private',
                        text2_2: 'University type',
                        text3: '6 Yrs',
                        text3_2: 'Course duration',
                        text4: '684000rs/yr',
                        text4_2: 'Course fee',
                        styling: {
                          "backgroundcolor":
                              changing1 ? secondaryColor : thirdColor,
                          "textcolor": changing1 ? thirdColor : grey2,
                          "border": borderbool1 ? grey2 : thirdColor
                        },
                        action: () {
                          setState(() {
                            borderbool1 = !borderbool1;
                            changing1 = !changing1;
                            changing2 = false;
                            changing3 = false;
                            changing4 = false;
                            if (changing1 == false &&
                                changing2 == false &&
                                changing3 == false &&
                                changing4 == false) {
                              container_visibility = false;
                            } else {
                              container_visibility = true;
                            }
                          });
                        }),
                    SizedBox(
                      height: size?.hp(2),
                    ),
                    UniversityCard(
                        image: 'assets/university2.png',
                        title: 'Far Eastern Federal University',
                        subTitle: 'Tver,Russia',
                        text1: '5178',
                        text1_2: 'World rank',
                        text2: 'Private',
                        text2_2: 'University type',
                        text3: '6 Yrs',
                        text3_2: 'Course duration',
                        text4: '684000rs/yr',
                        text4_2: 'Course fee',
                        styling: {
                          "backgroundcolor":
                              changing2 ? secondaryColor : thirdColor,
                          "textcolor": changing2 ? thirdColor : grey2,
                          "border": borderbool2 ? grey2 : thirdColor
                        },
                        action: () {
                          setState(() {
                            borderbool2 = !borderbool2;
                            changing2 = !changing2;
                            changing1 = false;
                            changing3 = false;
                            changing4 = false;
                            if (changing1 == false &&
                                changing2 == false &&
                                changing3 == false &&
                                changing4 == false) {
                              container_visibility = false;
                            } else {
                              container_visibility = true;
                            }
                          });
                        }),
                    SizedBox(
                      height: size?.hp(2),
                    ),
                    UniversityCard(
                        image: 'assets/university3.png',
                        title: 'Rudan State Medical University',
                        subTitle: 'Tver,Russia',
                        text1: '5178',
                        text1_2: 'World rank',
                        text2: 'Private',
                        text2_2: 'University type',
                        text3: '6 Yrs',
                        text3_2: 'Course duration',
                        text4: '684000rs/yr',
                        text4_2: 'Course fee',
                        styling: {
                          "backgroundcolor":
                              changing3 ? secondaryColor : thirdColor,
                          "textcolor": changing3 ? thirdColor : grey2,
                          "border": borderbool3 ? grey2 : thirdColor
                        },
                        action: () {
                          setState(() {
                            borderbool3 = !borderbool3;
                            changing3 = !changing3;
                            changing2 = false;
                            changing1 = false;
                            changing4 = false;
                            if (changing1 == false &&
                                changing2 == false &&
                                changing3 == false &&
                                changing4 == false) {
                              container_visibility = false;
                            } else {
                              container_visibility = true;
                            }
                          });
                        }),
                    SizedBox(
                      height: size?.hp(2),
                    ),
                    UniversityCard(
                        image: 'assets/university4.png',
                        title: 'Tyumen State Medical University',
                        subTitle: 'Tver,Russia',
                        text1: '5178',
                        text1_2: 'World rank',
                        text2: 'Private',
                        text2_2: 'University type',
                        text3: '6 Yrs',
                        text3_2: 'Course duration',
                        text4: '684000rs/yr',
                        text4_2: 'Course fee',
                        styling: {
                          "backgroundcolor":
                              changing4 ? secondaryColor : thirdColor,
                          "textcolor": changing4 ? thirdColor : grey2,
                          "border": borderbool4 ? grey2 : thirdColor
                        },
                        action: () {
                          setState(() {
                            borderbool4 = !borderbool4;
                            changing4 = !changing4;
                            changing2 = false;
                            changing3 = false;
                            changing1 = false;

                            if (changing1 == false &&
                                changing2 == false &&
                                changing3 == false &&
                                changing4 == false) {
                              container_visibility = false;
                            } else {
                              container_visibility = true;
                            }
                          });
                        }),
                    SizedBox(
                      height: size?.hp(2),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
