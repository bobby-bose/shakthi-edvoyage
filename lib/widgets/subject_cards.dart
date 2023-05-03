import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';

class SubjectCard extends StatelessWidget {
  late String text1;
  late String text2;
  late Function() action;

  SubjectCard({
    required this.text1,
    required this.text2,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 355,
      color: grey1,
      child: TextButton(
        onPressed: action,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: thirdColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        textScaleFactor: 1.2,
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        text2,
                        textScaleFactor: 1,
                        style: TextStyle(
                            color: grey2,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: primaryColor,
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
