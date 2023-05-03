import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';

import '../../utils/responsive.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int? selectedValue1;

  void onChange1(int value) {
    setState(() {
      selectedValue1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: VIPtext,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Welcome, ",
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              color: whiteColor,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: whiteColor),
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: Cprimary,
        //   ),
        //   onPressed: () {
        //     DrawerWidget();
        //     // do something
        //   },
        // ),
        actions: [
          CircleAvatar(
            backgroundColor: Cprimary,
            child: Icon(
              Icons.person,
              color: whiteColor,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'How are you feeling today',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Cprimary,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Explore Courses & University",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Cprimary),
                      ),
                      Container(
                        height: getHeight(context) / 5.5,
                        child: GridView.builder(
                            itemCount: 2,
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 4 / 3,
                                    crossAxisSpacing: 5,
                                    mainAxisSpacing: 5),
                            itemBuilder: (BuildContext ctx, index) {
                              return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/images/images.jpg",
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "300 +",
                                            style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                color: titlecolor),
                                          ),
                                          vGap(5),
                                          Text("University",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      ),
                                    ),
                                  ));
                            }),
                      ),
                      Container(
                        width: getWidth(context) / 1.3,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                padding: EdgeInsets.all(20)),
                            onPressed: () {},
                            child: Text("Explore Now")),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10)),
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
                            color: titlecolor,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                          ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            primary: false,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: getHeight(context) / 14,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: whiteColor,
                                        border: Border.all(color: titlecolor)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:timeline_tile/timeline_tile.dart';

// import '../showcase_timeline.dart';

// const example10 = Example(
//   name: 'Connect tiles with TimelineDivider.',
//   description:
//       'The TimelineDivider widget allows you to connect tiles that are aligned '
//       'in different horizontal or vertical axis, when combined with TimelineAlign.manual.',
//   code: '''
// return Container(
//   color: Colors.white,
//   child: Column(
//     mainAxisSize: MainAxisSize.min,
//     children: <Widget>[
//       TimelineTile(
//         alignment: TimelineAlign.manual,
//         lineXY: 0.1,
//         isFirst: true,
//         indicatorStyle: const IndicatorStyle(
//           width: 20,
//           color: Colors.purple,
//         ),
//         beforeLineStyle: const LineStyle(
//           color: Colors.purple,
//           thickness: 6,
//         ),
//       ),
//       const TimelineDivider(
//         begin: 0.1,
//         end: 0.9,
//         thickness: 6,
//         color: Colors.purple,
//       ),
//       TimelineTile(
//         alignment: TimelineAlign.manual,
//         lineXY: 0.9,
//         beforeLineStyle: const LineStyle(
//           color: Colors.purple,
//           thickness: 6,
//         ),
//         afterLineStyle: const LineStyle(
//           color: Colors.deepOrange,
//           thickness: 6,
//         ),
//         indicatorStyle: const IndicatorStyle(
//           width: 20,
//           color: Colors.cyan,
//         ),
//       ),
//       const TimelineDivider(
//         begin: 0.1,
//         end: 0.9,
//         thickness: 6,
//         color: Colors.deepOrange,
//       ),
//       TimelineTile(
//         alignment: TimelineAlign.manual,
//         lineXY: 0.1,
//         isLast: true,
//         beforeLineStyle: const LineStyle(
//           color: Colors.deepOrange,
//           thickness: 6,
//         ),
//         indicatorStyle: const IndicatorStyle(
//           width: 20,
//           color: Colors.red,
//         ),
//       ),
//     ],
//   ),
// );''',
//   childVertical: Example10Vertical(),
//   childHorizontal: Example10Horizontal(),
// );

// class Example10Vertical extends StatelessWidget {
//   const Example10Vertical({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildListDelegate(
//         <Widget>[
//           Container(
//             color: Colors.white,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: <Widget>[
//                 TimelineTile(
//                   alignment: TimelineAlign.manual,
//                   lineXY: 0.1,
//                   isFirst: true,
//                   indicatorStyle: const IndicatorStyle(
//                     width: 20,
//                     color: Colors.purple,
//                   ),
//                   beforeLineStyle: const LineStyle(
//                     color: Colors.purple,
//                     thickness: 6,
//                   ),
//                 ),
//                 const TimelineDivider(
//                   begin: 0.1,
//                   end: 0.9,
//                   thickness: 6,
//                   color: Colors.purple,
//                 ),
//                 TimelineTile(
//                   alignment: TimelineAlign.manual,
//                   lineXY: 0.9,
//                   beforeLineStyle: const LineStyle(
//                     color: Colors.purple,
//                     thickness: 6,
//                   ),
//                   afterLineStyle: const LineStyle(
//                     color: Colors.deepOrange,
//                     thickness: 6,
//                   ),
//                   indicatorStyle: const IndicatorStyle(
//                     width: 20,
//                     color: Colors.cyan,
//                   ),
//                 ),
//                 const TimelineDivider(
//                   begin: 0.1,
//                   end: 0.9,
//                   thickness: 6,
//                   color: Colors.deepOrange,
//                 ),
//                 TimelineTile(
//                   alignment: TimelineAlign.manual,
//                   lineXY: 0.1,
//                   isLast: true,
//                   beforeLineStyle: const LineStyle(
//                     color: Colors.deepOrange,
//                     thickness: 6,
//                   ),
//                   indicatorStyle: const IndicatorStyle(
//                     width: 20,
//                     color: Colors.red,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Example10Horizontal extends StatelessWidget {
//   const Example10Horizontal({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildListDelegate(
//         <Widget>[
//           Center(
//             child: Container(
//               constraints: const BoxConstraints(maxHeight: 120),
//               color: Colors.white,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 shrinkWrap: true,
//                 children: [
//                   TimelineTile(
//                     axis: TimelineAxis.horizontal,
//                     alignment: TimelineAlign.manual,
//                     lineXY: 0.1,
//                     isFirst: true,
//                     indicatorStyle: const IndicatorStyle(
//                       height: 20,
//                       color: Colors.purple,
//                     ),
//                     beforeLineStyle: const LineStyle(
//                       color: Colors.purple,
//                       thickness: 6,
//                     ),
//                   ),
//                   const TimelineDivider(
//                     axis: TimelineAxis.vertical,
//                     begin: 0.1,
//                     end: 0.9,
//                     thickness: 6,
//                     color: Colors.purple,
//                   ),
//                   TimelineTile(
//                     axis: TimelineAxis.horizontal,
//                     alignment: TimelineAlign.manual,
//                     lineXY: 0.9,
//                     beforeLineStyle: const LineStyle(
//                       color: Colors.purple,
//                       thickness: 6,
//                     ),
//                     afterLineStyle: const LineStyle(
//                       color: Colors.deepOrange,
//                       thickness: 6,
//                     ),
//                     indicatorStyle: const IndicatorStyle(
//                       height: 20,
//                       color: Colors.cyan,
//                     ),
//                   ),
//                   const TimelineDivider(
//                     axis: TimelineAxis.vertical,
//                     begin: 0.1,
//                     end: 0.9,
//                     thickness: 6,
//                     color: Colors.deepOrange,
//                   ),
//                   TimelineTile(
//                     axis: TimelineAxis.horizontal,
//                     alignment: TimelineAlign.manual,
//                     lineXY: 0.1,
//                     isLast: true,
//                     beforeLineStyle: const LineStyle(
//                       color: Colors.deepOrange,
//                       thickness: 6,
//                     ),
//                     indicatorStyle: const IndicatorStyle(
//                       height: 20,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
