import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';

class TeachCard extends StatelessWidget {
  late String text1;
  late String text2;
  late String text3;
  late Function() action;

  TeachCard({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 355,
      color: grey1,
      child: TextButton(
        onPressed: action,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: thirdColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: grey2,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        color: grey2,
                        size: 25,
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        text2,
                        textScaleFactor: 1,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            color: grey2,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 7,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          text3,
                          textScaleFactor: 1,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: primaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
