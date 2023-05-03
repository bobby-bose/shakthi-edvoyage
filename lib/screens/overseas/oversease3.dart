import 'package:flutter/material.dart';
import 'package:login_aadi/screens/overseas/slot_booked.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/slot_card.dart';

class OverSeaseThree extends StatefulWidget {
  const OverSeaseThree({Key? key}) : super(key: key);

  @override
  State<OverSeaseThree> createState() => _OverSeaseThreeState();
}

class _OverSeaseThreeState extends State<OverSeaseThree> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
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
        body: Column(
          children: [
            Container(
              height: size?.hp(5.5),
              width: double.infinity,
              color: thirdColor,
              child: Row(
                children: [
                  SizedBox(
                    width: size?.wp(5),
                  ),
                  Icon(
                    Icons.stars_sharp,
                    color: secondaryColor,
                  ),
                  SizedBox(
                    width: size?.wp(5),
                  ),
                  Text(
                    'Slot booking with counsilor',
                    textScaleFactor: 1,
                    style: TextStyle(
                        fontFamily: 'Roboto', fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size?.hp(2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DateButton(
                    text1: '15',
                    text2: 'Jul',
                    buttonColor: thirdColor,
                    textColor: primaryColor,
                    borderColor: primaryColor),
                DateButton(
                    text1: '16',
                    text2: 'Jul',
                    buttonColor: grey2,
                    textColor: grey1,
                    borderColor: grey2),
                DateButton(
                    text1: '17',
                    text2: 'Jul',
                    buttonColor: grey2,
                    textColor: grey1,
                    borderColor: grey2),
              ],
            ),
            SizedBox(
              height: size?.hp(2),
            ),
            Divider(
              height: .1,
              color: grey2,
              indent: 35,
              endIndent: 35,
            ),
            SizedBox(
              height: size?.hp(.5),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlotCard(
                        text1: '10:00 AM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '10:30 AM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '11:00 AM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlotCard(
                        text1: '11:30 AM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '12:00 PM',
                        textColor1: grey1,
                        boxColor1: grey2,
                        text2: 'Booked',
                        textColor2: grey1,
                        boxColor2: grey3,
                        action: () {}),
                    SlotCard(
                        text1: '12:30 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlotCard(
                        text1: '01:00 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '01:30 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '02:00 PM',
                        textColor1: grey1,
                        boxColor1: grey2,
                        text2: 'Booked',
                        textColor2: grey1,
                        boxColor2: grey3,
                        action: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlotCard(
                        text1: '02:30 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '03:00 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '03:30 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlotCard(
                        text1: '04:00 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '04:30 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '05:00 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlotCard(
                        text1: '05:30 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '06:00 PM',
                        textColor1: grey1,
                        boxColor1: grey2,
                        text2: 'Booked',
                        textColor2: grey1,
                        boxColor2: grey3,
                        action: () {}),
                    SlotCard(
                        text1: '06:30 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlotCard(
                        text1: '07:00 PM',
                        textColor1: grey1,
                        boxColor1: grey2,
                        text2: 'Booked',
                        textColor2: grey1,
                        boxColor2: grey3,
                        action: () {}),
                    SlotCard(
                        text1: '07:30 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                    SlotCard(
                        text1: '08:00 PM',
                        textColor1: fourthColor,
                        boxColor1: thirdColor,
                        text2: 'Available',
                        textColor2: thirdColor,
                        boxColor2: primaryColor,
                        action: () {}),
                  ],
                ),
                SizedBox(
                  height: size?.hp(.3),
                ),
                Container(
                  width: size?.wp(45),
                  height: size?.hp(5),
                  decoration: BoxDecoration(
                      color: grey2, borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (
                            _,
                            __,
                            ___,
                          ) =>
                                  SlotBooked()));
                    },
                    child: Text(
                      'Confirm slot ',
                      textScaleFactor: 1,
                      style:
                          TextStyle(color: grey3, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
