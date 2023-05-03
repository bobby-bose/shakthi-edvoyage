import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:login_aadi/screens/Profile_screen/profile_Tab/profile_about.dart';
import 'package:login_aadi/screens/Profile_screen/profile_Tab/profile_application.dart';
import 'package:login_aadi/screens/Profile_screen/profile_Tab/profile_favorites.dart';
import 'package:login_aadi/screens/Profile_screen/profile_Tab/profile_feed.dart';
import 'package:login_aadi/utils/avatar.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/utils/responsive.dart';
import 'package:login_aadi/widgets/mailIcon.dart';

import '../exploreUniversity_screen/exploreCoursesTab.dart';
import '../UniversityScreen/tabs/FeedTab.dart';
import '../UniversityScreen/tabs/GalleryTab.dart';
import '../UniversityScreen/tabs/aboutTab.dart';
import '../../constans_assets.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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

  Screen? size;
  @override
  Widget build(BuildContext context) {
    size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            ZoomDrawer.of(context)!.toggle();
          },
          child: Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 4),
              child: Icon(
                Icons.window,
                color: Cprimary,
              )),
        ),
        backgroundColor: Colors.white,
        elevation: .3,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Cavit',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color(0xFF025839))),
              TextSpan(
                  text: 'y',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 189, 18, 18))),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(color: primaryColor),
            child: Container(
              width: double.infinity,
              height: getHeight(context) / 6,
              child: Container(
                alignment: Alignment(-0.7, 2.5),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/profile.png"),
                  radius: 45.0,
                ),
              ),
            ),
          ),
          vGap(50),
          // Container(
          //   height: size?.hp(12.5),
          //   child: Stack(children: [
          //     Center(
          //       child: Container(
          //         height: size?.hp(10),
          //         width: size?.wp(20),
          //         child: CircleAvatar(
          //           backgroundColor: primaryColor,
          //           child: Container(
          //               height: size?.hp(9.6),
          //               width: size?.wp(20),
          //               child: Image.asset('assets/profile.png')),
          //         ),
          //       ),
          //     ),
          //     Column(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Center(
          //           child: Container(
          //             alignment: Alignment.topLeft,
          //             height: size?.hp(3.5),
          //             width: size?.wp(9),
          //             decoration: BoxDecoration(
          //                 color: primaryColor,
          //                 shape: BoxShape.circle,
          //                 border: Border.all(color: thirdColor)),
          //             child: TextButton(
          //                 onPressed: () {},
          //                 child: Icon(Icons.edit,
          //                     color: thirdColor, size: 12.5)),
          //           ),
          //         ),
          //       ],
          //     )
          //   ]),
          // ),

          // Spacer(
          //   flex: 2,
          // ),
          // Text(
          //   'Jane Deo',
          //   textScaleFactor: 1.3,
          //   style: TextStyle(color: fourthColor, fontWeight: FontWeight.bold),
          // ),
          // Spacer(
          //   flex: 2,
          // ),
          // Text(
          //   'A.J.Institute of Medical Sciences and Research Centre',
          //   textScaleFactor: 1,
          //   style: TextStyle(
          //       fontFamily: 'Roboto',
          //       color: fourthColor,
          //       fontWeight: FontWeight.w400),
          // ),
          // Text(
          //   'Medical Student - 1st Year',
          //   textScaleFactor: 1,
          //   style: TextStyle(
          //       fontFamily: 'Roboto',
          //       color: fourthColor,
          //       fontWeight: FontWeight.w400),
          // ),
          // Spacer(
          //   flex: 7,
          // ),

          Container(
            color: whiteColor,
            child: TabBar(
              labelPadding: EdgeInsets.zero,
              unselectedLabelColor: Colors.grey,
              labelColor: secondaryColor,
              controller: _tabController,
              indicatorColor: Cprimary,
              labelStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange),
              unselectedLabelStyle:
                  Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[200],
                      ),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(child: Text('Feed ')),
                Tab(child: Text('About')),
                Tab(child: Text('Favourites')),
                Tab(child: Text('Applications')),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ProfileFeed(),
                ProfileAbout(),
                ProfileFevourites(),
                ProfileApplication(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
