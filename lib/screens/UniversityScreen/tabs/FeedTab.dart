import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import '../../../_Models/university_feed.dart';
import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';

class FeedTab extends StatefulWidget {
  @override
  _FeedTabState createState() => _FeedTabState();
}

class _FeedTabState extends State<FeedTab> {
  Future<UniversityFeed> getFeedListApi() async {
    final response = await http.get(Uri.parse(
        'https://vass-edutech.vercel.app/api/v1/education/university/feed'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return UniversityFeed.fromJson(data);
    } else {
      return UniversityFeed.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color3,
        body: FutureBuilder<UniversityFeed>(
            future: getFeedListApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:
                                        Color.fromARGB(255, 25, 117, 28),
                                    child: Text(
                                      "T",
                                      style: TextStyle(
                                          fontFamily: 'Poppins', color: White),
                                    ),
                                  ),
                                  hGap(10),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        snapshot.data!.data![0].user.toString(),
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 17,
                                            color: Cprimary,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        snapshot.data!.data![0].createdAt
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'Poppins',
                                            color: Cprimary,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: ttext2,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        vGap(5),
                                        Text(
                                          snapshot.data!.data![0].feedTitle
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontFamily: 'Poppins',
                                              color: titlecolor,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        vGap(5),
                                        // Text(
                                        //   snapshot.data!.data![0].feed
                                        //       .toString(),
                                        //   style: TextStyle(
                                        //       fontFamily: 'Poppins',
                                        //       fontSize: 12,
                                        //       fontWeight: FontWeight.w400),
                                        // ),
                                        // vGap(5),
                                        Text(
                                          snapshot.data!.data![0].feed
                                              .toString(),
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        vGap(5),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
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
