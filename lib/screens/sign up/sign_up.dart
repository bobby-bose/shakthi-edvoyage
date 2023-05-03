import 'dart:convert';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:http/http.dart' as http;
import 'package:login_aadi/utils/hive_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:login_aadi/screens/login/login_screen.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/long_button.dart';
import 'package:login_aadi/widgets/mailIcon.dart';
import 'package:dio/dio.dart';
import '../../_Models/PostModel/register_res.dart';
import '../../utils/session_key.dart';
import '../login/otp.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final Dio _dio = Dio();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final TextEditingController _mobile = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
        backgroundColor: thirdColor,
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Container(
              color: thirdColor,
              child: Column(children: [
                SizedBox(
                  height: size?.hp(2),
                ),
                Container(
                  height: size?.hp(42),
                  width: size?.wp(80),
                  child: Image.asset(signup),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Sign up',
                          textScaleFactor: 2.275,
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: size?.hp(4.3),
                          ),
                          Container(
                            height: size?.hp(.4),
                            width: size?.wp(6),
                            margin: EdgeInsets.only(left: 1.5),
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size?.hp(1),
                ),
                Container(
                  width: size?.wp(87),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // TextField(
                      //   decoration: InputDecoration(
                      //     icon: EmailIcon(),
                      //     label: Text(
                      //       'Email ID',
                      //       textScaleFactor: 1,
                      //       style: TextStyle(
                      //           color: grey2, fontWeight: FontWeight.w400),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: size?.hp(1),
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Container(
                      //       alignment: Alignment.centerLeft,
                      //       width: size?.wp(20),
                      //       child: TextField(
                      //         decoration: InputDecoration(
                      //           icon: Icon(Icons.emoji_emotions_outlined,
                      //             color: primaryColor,
                      //             size: 25,
                      //           ),
                      //           label: Row(
                      //             mainAxisAlignment: MainAxisAlignment.start,
                      //             children: [
                      //               Text('Dr',
                      //                 textScaleFactor: 1,
                      //                 style: TextStyle(
                      //                     color: grey2,
                      //                     fontWeight: FontWeight.w400
                      //                 ),
                      //               ),
                      //               Icon(Icons.keyboard_arrow_down_outlined,
                      //                 color: grey2,
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     Container(
                      //       width: size?.wp(65),
                      //       child: TextField(
                      //         decoration: InputDecoration(
                      //           label: Text('John Doe',
                      //             textScaleFactor: 1,
                      //             style: TextStyle(
                      //                 color: grey2,
                      //                 fontWeight: FontWeight.w400
                      //             ),),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: size?.hp(1),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 80,
                            child: TextFormField(
                              controller: _countryController,
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Invalid';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone,
                                    color: primaryColor, size: 25),
                                label: Text(
                                  '+91',
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: grey2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          // Text(
                          //   "|",
                          //   style: TextStyle(fontSize: 33, color: Colors.grey),
                          // ),
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _mobile,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Mobile Number & Country code';
                                }
                                return null;
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(13)
                              ],
                              decoration: InputDecoration(
                                label: Text(
                                  '  Mobile',
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: grey2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size?.hp(4),
                ),
                Container(
                  width: size?.wp(87),
                  child: Stack(children: [
                    // Row(children: [
                    //   Text(
                    //     'By signing up, you agree to our',
                    //     textScaleFactor: 1,
                    //     style: TextStyle(
                    //       color: grey2,
                    //       fontFamily: 'Roboto',
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //   ),
                    //   Container(
                    //     height: size?.hp(4.75),
                    //     child: TextButton(
                    //       onPressed: () {},
                    //       child: Text(
                    //         'Terms & Conditions',
                    //         textScaleFactor: 1.1,
                    //         style: TextStyle(
                    //           color: primaryColor,
                    //           fontFamily: 'Roboto',
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ]),
                    Container(
                      margin: EdgeInsets.only(top: 19),
                      child: Row(
                        children: [
                          Text(
                            'and',
                            textScaleFactor: 1,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: grey2,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            height: size?.hp(4.75),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Privacy Policy',
                                textScaleFactor: 1.1,
                                style: TextStyle(
                                  color: primaryColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: size?.hp(2.4),
                ),
                LongButton(
                  action: () async {
                    if (formKey.currentState!.validate()) {
                      await registration(_countryController.text.toString(),
                          _mobile.text.toString());
                      SnackBar(content: Text("data"));
                    } else {
                      final snackBar = SnackBar(
                        content: Text("Please fill your Credential"),
                        backgroundColor: Colors.red,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                    // Get.to(Otp());
                    // regidter();
                    // Navigator.push(context,
                    //     PageRouteBuilder(pageBuilder: (_, __, ___) => Otp()));
                  },
                  text: 'Continue',
                ),
                SizedBox(
                  height: size?.hp(.25),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member?',
                        textScaleFactor: 1.2,
                        style: TextStyle(fontFamily: 'Roboto', color: grey2),
                      ),
                      TextButton(
                        onPressed: () {
                          // regidter();
                          // Navigator.push(
                          //     context,
                          //     PageRouteBuilder(
                          //         pageBuilder: (_, __, ___) => LoginScreen()));
                        },
                        child: Text(
                          'Login',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                              fontFamily: 'Roboto', color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }

  Future<void> registration(String _countryController, String _mobile) async {
    try {
      var response = await _dio.post(
        "http://edutech.vass.co.in/api/v1/auth/register",
        data: {"country_code": _countryController, "mobile": _mobile},
      );
      var jsonData = jsonDecode(response.toString());
      if (response.statusCode == 200) {
        if (jsonData['success'] == true) {
          HiveUtils.addSession(SessionKey.mobileNum, jsonData['data']['username']);
          Get.to(() => Otp());
        }
      } else {}
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }
}
