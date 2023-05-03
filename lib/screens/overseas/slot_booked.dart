import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import '../../utils/avatar.dart';
import '../../utils/responsive.dart';

class SlotBooked extends StatefulWidget {
  const SlotBooked({Key? key}) : super(key: key);

  @override
  State<SlotBooked> createState() => _SlotBookedState();
}

class _SlotBookedState extends State<SlotBooked> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: thirdColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Image.asset(slotbooked),
              ),
            ),
            SizedBox(
              height: size?.hp(2.5),
            ),
            Text(
              'Slot Booked',
              textScaleFactor: 2,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size?.hp(2.5),
            ),
            Container(
              width: 210,
              height: 90,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        'Congrats! your meeting with our',
                        textScaleFactor: .98,
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            wordSpacing: 3),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'counsellor has been reserved on',
                        textScaleFactor: .98,
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            wordSpacing: 2),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '15th Jul, 02:30 PM,',
                        textScaleFactor: .98,
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            wordSpacing: 5),
                      ),
                      Text(
                        ' please join',
                        textScaleFactor: .98,
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            wordSpacing: 5),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'the meeting through the link sent',
                        textScaleFactor: .98,
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'to your mail.',
                        textScaleFactor: .98,
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size?.hp(5),
            ),
            Container(
              width: size?.wp(53),
              height: size?.hp(5),
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Back',
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: thirdColor,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
