import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';

class McqCard extends StatelessWidget {
  late String name;
  late Color textColor;
  late Color subColor;
  late var model;
  late String? text;
  late Color? color;
  late Function() action;

  McqCard(
      {required this.name,
      required this.model,
      this.text,
      this.color,
      required this.textColor,
      required this.subColor,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 80,
      decoration: BoxDecoration(
          color: thirdColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: grey2)),
      child: TextButton(
        onPressed: action,
        child: ListTile(
          leading: Image.asset('assets/mcqcard.png'),
          title: Text(
            name,
            textScaleFactor: 1.3,
            style: TextStyle(
                fontFamily: 'Roboto',
                color: textColor,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Icon(
                Icons.access_time_rounded,
                size: 17.5,
              ),
              Text(
                '  20 MCQ\'s',
                textScaleFactor: 1.1,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: subColor,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          trailing: Column(
            children: [
              Container(child: model, color: color),
              Text(
                text!,
                textScaleFactor: 1,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    color: primaryColor,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
