import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';

class SlotCard extends StatelessWidget {
  late String text1;
  late Color textColor1;
  late Color boxColor1;
  late String text2;
  late Color textColor2;
  late Color boxColor2;
  late Function() action;

  SlotCard({
    required this.text1,
    required this.textColor1,
    required this.boxColor1,
    required this.text2,
    required this.textColor2,
    required this.boxColor2,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      color: grey1,
      child: TextButton(
        onPressed: action,
        child: Stack(
          children: [
            Container(
              width: 100,
              padding: EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: boxColor1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    textScaleFactor: 1.25,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: textColor1,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: boxColor2,
                  ),
                  child: Text(
                    text2,
                    textScaleFactor: .9,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: textColor2,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DateButton extends StatelessWidget {
  late String text1;
  late String text2;
  late Color buttonColor;
  late Color textColor;
  late Color borderColor;

  DateButton(
      {required this.text1,
      required this.text2,
      required this.buttonColor,
      required this.textColor,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(12.5),
        color: buttonColor,
      ),
      child: TextButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text1,
              textScaleFactor: 1.2,
              style: TextStyle(
                fontFamily: 'Roboto',
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text2,
              textScaleFactor: .7,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: textColor,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
