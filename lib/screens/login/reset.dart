import 'package:flutter/material.dart';
import 'package:login_aadi/screens/login/login_screen.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/back_arrow_button.dart';
import 'package:login_aadi/widgets/lockIcon.dart';
import 'package:login_aadi/widgets/long_button.dart';
import 'package:login_aadi/widgets/visibilityOff.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Container(
          color: thirdColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size?.hp(5),
              ),
              Row(
                children: [
                  BackArrow(),
                ],
              ),
              Container(
                height: size?.hp(35),
                width: size?.wp(80),
                child: Image.asset(reset),
              ),
              SizedBox(
                height: size?.hp(1),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Stack(
                  children: [
                    Container(
                      height: size?.hp(5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Reset',
                        textScaleFactor: 2.225,
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: size?.hp(4.5),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 1.5),
                          height: size?.hp(.4),
                          width: size?.wp(6),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 2),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password!',
                    textScaleFactor: 2.225,
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                width: size?.wp(87),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        icon: LockIcon(),
                        label: Text(
                          'New Password',
                          textScaleFactor: 1,
                          style: TextStyle(
                              color: grey2, fontWeight: FontWeight.w400),
                        ),
                        suffixIcon: VisibilityOff(),
                      ),
                    ),
                    SizedBox(
                      height: size?.hp(1),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        icon: LockIcon(),
                        label: Text(
                          'Confirm New Password',
                          textScaleFactor: 1,
                          style: TextStyle(
                              color: grey2, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size?.hp(4),
              ),
              LongButton(
                  action: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => LoginScreen()));
                  },
                  text: 'Reset'),
            ],
          ),
        ),
      ),
    );
  }
}
