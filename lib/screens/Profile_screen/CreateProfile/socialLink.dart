import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';

class SocialLink extends StatefulWidget {
  @override
  _SocialLinkState createState() => _SocialLinkState();
}

class _SocialLinkState extends State<SocialLink> {
  Screen? size;

  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);

    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        fontFamily: 'Roboto',
        color: titlecolor);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: size?.hp(15),
          margin: const EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                Container(
                  width: size?.wp(87),
                  height: size?.hp(5),
                  decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Save',
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: thirdColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                vGap(20),
                Container(
                  width: size?.wp(87),
                  height: size?.hp(5),
                  decoration: BoxDecoration(
                      color: White, borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      textScaleFactor: 1.25,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: cblack10,
        appBar: AppBar(
          elevation: 1,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          backgroundColor: whiteColor,
          title: Text(
            "Social Links",
            style: labelTextStyle,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Facebook",
                style: labelTextStyle,
              ),
              vGap(10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Link',
                  hintText: 'Enter your link',
                ),
              ),
              vGap(20),
              Text(
                "Linked In",
                style: labelTextStyle,
              ),
              vGap(10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Your Link',
                  hintText: 'Enter your link',
                ),
              ),
            ],
          ),
        ));
  }
}
