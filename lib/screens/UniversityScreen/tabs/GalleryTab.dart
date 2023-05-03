import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';

class GalleryTab extends StatefulWidget {
  @override
  _GalleryTabState createState() => _GalleryTabState();
}

class _GalleryTabState extends State<GalleryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cblack10,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: White, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "University Entrance",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Cprimary),
                        ),
                        Divider(
                          thickness: 1,
                          color: text5,
                        ),
                        Container(
                          height: getHeight(context) / 5.6,
                          child: Center(
                            child: GridView.builder(
                                itemCount: 2,
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        childAspectRatio: 3 / 3,
                                        crossAxisSpacing: 20,
                                        mainAxisSpacing: 20),
                                itemBuilder: (BuildContext ctx, index) {
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: cblack10),
                                      ));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  vGap(20),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: White, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lectures Rooms",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Cprimary),
                        ),
                        Divider(
                          thickness: 1,
                          color: text5,
                        ),
                        Container(
                          height: getHeight(context) / 5.6,
                          child: Center(
                            child: GridView.builder(
                                itemCount: 2,
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        childAspectRatio: 3 / 3,
                                        crossAxisSpacing: 20,
                                        mainAxisSpacing: 20),
                                itemBuilder: (BuildContext ctx, index) {
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: cblack10),
                                      ));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  vGap(20),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: White, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "University Entrance",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Cprimary),
                        ),
                        Divider(
                          thickness: 1,
                          color: text5,
                        ),
                        Container(
                          height: getHeight(context) / 5.6,
                          child: Center(
                            child: GridView.builder(
                                itemCount: 2,
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        childAspectRatio: 3 / 3,
                                        crossAxisSpacing: 20,
                                        mainAxisSpacing: 20),
                                itemBuilder: (BuildContext ctx, index) {
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: cblack10),
                                      ));
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  vGap(10),
                  Center(
                    child: Text(
                      "--------- De voyage --------",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: grey2),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
