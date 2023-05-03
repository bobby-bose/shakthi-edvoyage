import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:login_aadi/screens/Payment_screen/saving.dart';
import 'package:login_aadi/screens/Profile_screen/CreateProfile/socialLink.dart';
import 'package:login_aadi/screens/Profile_screen/CreateProfile/workDetails.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';
import '../../widgets/offer_card.dart';
import '../../widgets/sort_button.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

final style = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black);

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        color: titlecolor);
    return Scaffold(
      backgroundColor: White,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'De vo',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Cprimary)),
              TextSpan(
                  text: 'y',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: secondaryColor)),
              TextSpan(
                  text: 'age',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Cprimary)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 34,
              width: 34,
              child: Image.asset(
                "assets/crown.png",
                fit: BoxFit.cover,
              ),
            ),
            vGap(15),
            Text(
              "Start exploring",
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Cprimary,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            vGap(20),
            Text(
              "To get the complete course and other premium services this app provide please make the payment ",
              style: TextStyle(
                  fontSize: 14, color: textColor, fontWeight: FontWeight.w400),
            ),
            vGap(20),
            Container(
                padding: EdgeInsets.all(25),
                height: getHeight(context) / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/background.png")),
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "2000",
                          style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: White),
                        )
                      ],
                    ),
                    vGap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/Group 342.png"),
                            hGap(10),
                            Text(
                              "24x7 Help desk",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: White),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset("assets/Group 342.png"),
                            hGap(10),
                            Text(
                              "Scholarship",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: White),
                            ),
                          ],
                        )
                      ],
                    ),
                    vGap(20),
                    Row(
                      children: [
                        Image.asset("assets/Group 342.png"),
                        hGap(10),
                        Text(
                          "offers",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              color: White),
                        ),
                      ],
                    )
                  ],
                )),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.5,
              ),
            ),
            OfferCard(
              action: () {},
              text: "18%",
              text2: " Off  till 24th",
            ),
            vGap(20),
            OfferCard(action: () {}, text: "18%", text2: " Off  till 24th"),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LongButton(
                  action: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Saving_screen())));
                  },
                  text: "Proceed to payment"),
            ),
          ],
        ),
      ),
    );
  }
}
