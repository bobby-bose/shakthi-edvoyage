import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:login_aadi/screens/Timer_screen/timer_one.dart';
import 'package:login_aadi/screens/teach_screen/video/video_1.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../../Payment_screen/payment.dart';

import '../../../utils/avatar.dart';
import '../../../utils/colors/colors.dart';
import '../../../widgets/mcq_card.dart';
import '../tech_home_screen.dart';
import 'video_function.dart';

class VideoTwo extends StatefulWidget {
  const VideoTwo({Key? key}) : super(key: key);

  @override
  State<VideoTwo> createState() => _VideoTwoState();
}

class _VideoTwoState extends State<VideoTwo> {
  File? file;
  String? name;
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: size?.wp(7),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                      pageBuilder: (_, __, ___) =>
                                          TeachHome()));
                            },
                            child: Icon(
                              Icons.menu_book,
                              color: primaryColor,
                              size: 25,
                            )),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => VideoOne()));
                        },
                        child: Row(
                          children: [
                            Text(
                              '/ ',
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Video',
                              textScaleFactor: 1.3,
                              style: TextStyle(
                                  color: primaryColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '/',
                        textScaleFactor: 1.3,
                        style: TextStyle(
                          color: primaryColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        ' Human Anatomy',
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Cprimary,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TimerOne()));
                    },
                  ),
                ],
              ),
            ),
            Container(
              height: size?.hp(84),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: ListView(children: [
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Gametogenesis',
                  textColor: primaryColor,
                  subColor: grey2,
                  model: Icon(Icons.lock_open_outlined, color: primaryColor),
                  text: 'FREE',
                  action: () async {
                    await getfile();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoFunctions(sub1: file!),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Epithelium',
                  textColor: grey1,
                  subColor: grey1,
                  model: Image.asset('assets/crown.png'),
                  text: '',
                  action: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Payment()));
                  },
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'History of Glance',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Muscle & Cartilages',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Spinal code',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Cerebellum',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Osteology',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Nose & Toungue',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Larynx & Pharynx',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                McqCard(
                  name: 'Facial nerves',
                  model: Image.asset('assets/crown.png'),
                  textColor: grey1,
                  subColor: grey1,
                  text: '',
                  action: () {},
                ),
                SizedBox(
                  height: size?.hp(2),
                )
              ]),
            ),
          ]),
        ),
      ),
    );
  }

  getfile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp3', 'mp4'],
    );

    if (result != null) {
      File c = File(result.files.single.path.toString());
      setState(() {
        file = c;
        name = result.names.toString();
      });
    }
  }
}
