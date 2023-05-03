import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math' as math;
import 'package:http/http.dart' as http;
import '../../_Services/Auth/constant.dart';
import '../../_Models/all_notification.dart';
import '../../_Models/notification_offer.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Cprimary,
          ),
        ),
        title: Text(
          "Notification",
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              color: primaryColor,
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: White,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getWidth(context) / 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: TabBar(
                unselectedLabelColor: Color.fromARGB(255, 54, 53, 53),
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: Cprimary),
                labelColor: White,
                controller: _tabController,
                indicatorColor: Cprimary,
                tabs: [
                  Tab(
                    height: 30,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Color.fromARGB(255, 215, 200, 200),
                              width: 1)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "All",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    height: 30,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                              color: Color.fromARGB(255, 215, 200, 200),
                              width: 1)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(" Offers ",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1)),
                      ),
                    ),
                  ),
                ],
              ),
              // UIHelper.verticalSpaceSmall(),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                AllNotifications(),
                Offers(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AllNotifications extends StatefulWidget {
  @override
  State<AllNotifications> createState() => _AllNotificationsState();
}

class _AllNotificationsState extends State<AllNotifications> {
  Future<AllNotification> getdoctorsApi() async {
    final response = await http.get(Uri.parse(
        'https://vass-edutech.vercel.app/api/v1/education/notification'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return AllNotification.fromJson(data);
    } else {
      return AllNotification.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: FutureBuilder<AllNotification>(
            future: getdoctorsApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 19,
                                      backgroundColor: contr3,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: VIPtext,
                                        child: Transform.rotate(
                                          angle: 180 * math.pi / 150,
                                          child: Icon(
                                            Icons.label_outlined,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                hGap(20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data!.data[index].title,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 18)),
                                      vGap(5),
                                      Text(snapshot.data!.data[index].message,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14)),
                                      vGap(5),
                                      Text("10 Hours Ago",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      );
                    });
              } else {
                return Center(
                    child: CircularProgressIndicator(
                  color: Cprimary,
                  backgroundColor: secondaryColor,
                ));
              }
            }));
  }
}

class Offers extends StatefulWidget {
  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  Future<NotificationOffer> getnotificationofferApi() async {
    final response = await http.get(Uri.parse(
        'https://vass-edutech.vercel.app/api/v1/education/notification/offer'));
    var datanitificationoffer = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return NotificationOffer.fromJson(datanitificationoffer);
    } else {
      return NotificationOffer.fromJson(datanitificationoffer);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: FutureBuilder<NotificationOffer>(
            future: getnotificationofferApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Divider(
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 19,
                                      backgroundColor: contr3,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: VIPtext,
                                        child: Transform.rotate(
                                          angle: 180 * math.pi / 150,
                                          child: Icon(
                                            Icons.label_outlined,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                hGap(20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(snapshot.data!.data[index].title,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 18)),
                                      vGap(5),
                                      Text(snapshot.data!.data[index].message,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14)),
                                      vGap(5),
                                      Text("10 Hours Ago",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      );
                    });
              } else {
                return Center(
                    child: CircularProgressIndicator(
                  color: Cprimary,
                  backgroundColor: secondaryColor,
                ));
              }
            }));
  }
}

// getCustomerInfo() async {
//   try {
//     final SharedPreferences sharedPreferences =
//         await SharedPreferences.getInstance();
//     final gettoken = sharedPreferences.getString("Tokens");

//     final SharedPreferences sharedPrefEmployee_id =
//         await SharedPreferences.getInstance();
//     final getempid = sharedPrefEmployee_id.getString("employee_id");

//     var customerInfoUrl = 'http://107.178.223.50/celektstores/api/lead.php';

//     final postBody = {
//       "leads_list": true,
//       "employee_id": "EMP03",
//       "customer_id": "LMS1",
//       "assignment_id": "1"
//     };
//     final headersData = {'ver': 1, 'auth-key': gettoken};
//     Response customerinfoResponse = await Dio().post(customerInfoUrl,
//         data: postBody, options: Options(headers: headersData));
//     final customerinfoResult =
//         CustomerInfoRes.fromJson(customerinfoResponse.data);

//     setState(() {
//       _customerinfoList = customerinfoResult;
//     });
//   } on DioError catch (e) {}
// }


