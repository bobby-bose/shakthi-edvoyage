import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import '../../../_Models/university_about.dart';
import '../../../utils/avatar.dart';
import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';
import '../../../widgets/tver_modal.dart';

class AboutTab extends StatefulWidget {
  @override
  _AboutTabState createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  Future<UniversityAbout> getUniversityabouttApi() async {
    final response = await http.get(Uri.parse(
        'https://vass-edutech.vercel.app/api/v1/education/university/about'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return UniversityAbout.fromJson(data);
    } else {
      return UniversityAbout.fromJson(data);
    }
  }

  void initState() {
    getUniversityabouttApi();
    super.initState();

    // myTaskComment();
  }

  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        color: titlecolor);
    return Scaffold(
      backgroundColor: color3,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FutureBuilder<UniversityAbout>(
                  future: getUniversityabouttApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About University",
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Cprimary),
                              ),
                              Divider(
                                thickness: 1,
                                color: titlecolor,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  snapshot.data!.data[0].about,
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.5,
                                      fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            aboutfirstrowtwocards(
                              snapshot,
                              labelTextStyle,
                              "World University",
                              "Ranking",
                            ),
                            aboutfirstrowtwocards(snapshot, labelTextStyle,
                                "Undergraduate", "Programs"),
                          ], //<Widget>[]
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        Divider(
                          thickness: 1,
                          color: grey2,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: thirdColor),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          fmeg,
                                          height: 50,
                                          width: 50,
                                        ),
                                        vGap(5),
                                        Text(
                                          "FMGE",
                                          style: labelTextStyle,
                                        ),
                                        vGap(5),
                                        Text(
                                          "Affiliated",
                                          maxLines: 2,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: thirdColor),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // SvgPicture.asset("assets/svg/plab.svg"),
                                        Image.asset(
                                          "assets/badge_1_(2).png",
                                          height: 50,
                                          width: 50,
                                        ),
                                        vGap(5),
                                        Text(
                                          "USML",
                                          style: labelTextStyle,
                                        ),
                                        vGap(5),
                                        Text(
                                          "Affiliated",
                                          maxLines: 2,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: thirdColor),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/badge 1 (1).png",
                                          height: 50,
                                          width: 50,
                                        ),
                                        vGap(5),
                                        Text(
                                          "PLAB",
                                          style: labelTextStyle,
                                        ),
                                        vGap(5),
                                        Text(
                                          "Affiliated",
                                          maxLines: 2,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ], //<Widget>[]
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                        Divider(
                          thickness: 1,
                          color: grey2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            displaycards(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Cprimary,
                                ),
                                text: "fggfgfgfgfgfgfgfg"),
                            displaycards(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Cprimary,
                                ),
                                text: "fggfgfgfgfgfgfgfg"),
                            displaycards(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Cprimary,
                                ),
                                text: "fggfgfgfgfgfgfgfg"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            displaycards(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Cprimary,
                                ),
                                text: "fggfgfgfgfgfgfgfg"),
                            displaycards(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Cprimary,
                                ),
                                text: "fggfgfgfgfgfgfgfg"),
                            displaycards(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Cprimary,
                                ),
                                text: "fggfgfgfgfgfgfgfg"),
                          ],
                        ),
                      ]);
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return CircularProgressIndicator(
                        color: Cprimary, backgroundColor: secondaryColor);
                  }),
            ),
            vGap(3),
            LongButton(
                action: () {
                  displayModalBottomSheet(context);
                },
                text: 'Apply Now'),
            vGap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "--------- De voyage --------",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: grey2),
                )
              ],
            ),
            vGap(80),
          ],
        ),
      ),
    );
  }

  Expanded aboutfirstrowtwocards(AsyncSnapshot<UniversityAbout> snapshot,
      TextStyle labelTextStyle, String textup, String textdown) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: thirdColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/trophy_1.png",
                height: 50,
                width: 50,
              ),
              vGap(5),
              Text(
                snapshot.data!.data[0].ranking,
                style: labelTextStyle,
              ),
              vGap(5),
              Text(
                textup,
                maxLines: 2,
              ),
              Text(
                textdown,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void displayModalBottomSheet(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: whiteColor,
              ),
              height: getHeight(context) / 2,
              child: Column(
                children: [DropDownDemo()],
              ),
            ),
          );
        });
  }
}

class displaycards extends StatelessWidget {
  displaycards({Key? key, required this.icon, required this.text})
      : super(key: key);

  Icon icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: thirdColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/books_1.png",
                  height: 50,
                  width: 50,
                ),
                vGap(5),
                Text(
                  text,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )),
    );
  }
}
