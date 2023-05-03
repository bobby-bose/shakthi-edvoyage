import 'package:flutter/material.dart';
import 'package:login_aadi/utils/responsive.dart';

import '../utils/colors/colors.dart';

class OfferCard extends StatelessWidget {
  late String text;
  late String text2;
  late Function() action;

  OfferCard({required this.action, required this.text, required this.text2});

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);

    return Container(
      width: size?.wp(87),
      height: size?.hp(8),
      decoration: BoxDecoration(
          color: Cprimary, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(
            right: 2,
            child: Container(
              child: Image.asset("assets/price-tag.png"),
              width: 35,
              height: 35,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: TextButton(
                onPressed: action,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: text,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: White)),
                    TextSpan(
                        text: text2,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: White)),
                  ]),
                )),
          )
        ],
      ),
    );
  }
}
