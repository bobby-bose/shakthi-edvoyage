import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_aadi/screens/UniversityScreen/tabs/aboutTab.dart';
import 'package:login_aadi/screens/UniversityScreen/tabs/FeedTab.dart';
import 'package:login_aadi/screens/exploreUniversity_screen/exploreCoursesTab.dart';
import 'package:login_aadi/screens/UniversityScreen/tabs/GalleryTab.dart';

import '../Cavity_Screen/cavity.dart';
import '../Cavity_Screen/chatscreens/home.dart';
import '../Cavity_Screen/chatscreens/widgets.dart';
import '../home_screen/couese.dart';
import 'tabs/courses_screenTab.dart';
import '../home_screen/homeScreen.dart';
import '../overseas/oversease1.dart';
import '../Profile_screen/profile_Screen.dart';
import '../teach_screen/tech_home_screen.dart';
import '../../utils/BottomNavigation/bottom_navigation.dart';
import '../../utils/BottomNavigation/controller.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';

BottomNavigationController controller = Get.put(BottomNavigationController());

class UniversitHomeScreen extends StatefulWidget {
  const UniversitHomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home-screen';

  @override
  State<UniversitHomeScreen> createState() => _UniversitHomeScreenState();
}

class _UniversitHomeScreenState extends State<UniversitHomeScreen>
    with SingleTickerProviderStateMixin {
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

  final List<Widget> _children = [
    Profile(),
    Cavity_screen(),
    HomeScreen(),
    TeachHome(),
  ];

  int selectedIndex = 2;

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontFamily: 'Roboto', fontSize: 8.0);
    return Obx(() {
      int index = controller.tabIndex.toInt();

      return Scaffold(
        backgroundColor: White,
        appBar: AppBar(
          backgroundColor: White,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios, color: Cprimary)),
          title: RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'De vo',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Cprimary)),
                TextSpan(
                    text: 'y',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: secondaryColor)),
                TextSpan(
                    text: 'age',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Cprimary)),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: White,
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage("assets/Rectangle_1008.png"),
                            fit: BoxFit.cover)),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 2.3,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 100,
                      height: 90.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/logo_2.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Tver State Medical  Univercity"),
                      hGap(5),
                      Image.asset(
                        "assets/external-link-alt.png",
                        width: 10,
                        height: 10,
                      )
                    ],
                  ),
                  vGap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      hGap(5),
                      Text("Tver Oblast , Russia"),
                    ],
                  ),
                  vGap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Ctext2),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: grey2),
                              ),
                            )),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: ((context) => chatHome())));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Follow',
                              style: TextStyle(
                                  fontFamily: 'Roboto', color: fourthColor),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                      hGap(25),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Ctext2),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  side: BorderSide(color: grey2),
                                ),
                              )),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => chatWidget()));
                          },
                          child: Icon(
                            Icons.download,
                            color: fourthColor,
                          )),
                      hGap(25),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Ctext2),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(color: grey2),
                              ),
                            )),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => Cavity_screen()));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Apply',
                              style: TextStyle(
                                  fontFamily: 'Roboto', color: fourthColor),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              vGap(5),
              Container(
                color: White,
                child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Cprimary,
                  controller: _tabController,
                  indicatorColor: Cprimary,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 15.0, color: Colors.orange),
                  unselectedLabelStyle:
                      Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 14.0,
                            color: Colors.grey[200],
                          ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(child: Text('Aboout')),
                    Tab(child: Text('Feed')),
                    Tab(child: Text('Courses')),
                    Tab(child: Text('Gallery')),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    AboutTab(),
                    FeedTab(),
                    CoursesScreenTab(),
                    GalleryTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 50.0,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: secondaryColor,
            unselectedItemColor: primaryColor,
            currentIndex: selectedIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedLabelStyle: labelTextStyle,
            unselectedLabelStyle: labelTextStyle,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/frame.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/diamonds.png")),
                label: 'SEARCH',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/Group 98.png")),
                label: 'CART',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/book.png")),
                label: 'ACCOUNT',
              ),
              // BottomNavigationBarItem(
              //   icon: ImageIcon(AssetImage("assets/airplane.png")),
              //   label: 'SEARCH',
              // ),
            ],
          ),
        ),
      );
    });
  }
}
