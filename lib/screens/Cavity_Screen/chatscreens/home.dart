import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:login_aadi/screens/Cavity_Screen/chatscreens/chat.dart';

import '../../home_screen/homeScreen.dart';
import '../../overseas/oversease1.dart';
import '../../Profile_screen/profile_Screen.dart';
import '../../teach_screen/tech_home_screen.dart';
import '../../../utils/BottomNavigation/bottom_navigation.dart';
import '../../../utils/BottomNavigation/controller.dart';
import '../../../utils/colors/colors.dart';
import '../cavity.dart';
import 'global.dart';

BottomNavigationController controller = Get.put(BottomNavigationController());

class chatHome extends StatefulWidget {
  const chatHome({Key? key}) : super(key: key);

  @override
  State<chatHome> createState() => _chatHomeState();
}

class _chatHomeState extends State<chatHome> {
  final List<Widget> _children = [
    Profile(),
    Cavity_screen(),
    HomeScreen(),
    TeachHome(),
    OverseasOne(),
  ];

  int selectedIndex = 1;

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
        backgroundColor: Color(0xFFEFEFEF),
        appBar: AppBar(
          elevation: 1,
          leading: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.green,
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Messages",
            style: TextStyle(color: Colors.green),
          ),
        ),
        body: ListView.separated(
            itemCount: friendsList.length,
            itemBuilder: (ctx, i) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => ChatScreen())));
                },
                child: ListTile(
                  // isThreeLine: true,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/Ellipse.png"),
                  ),
                  title: Text(
                    "${friendsList[i]['username']}",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  subtitle: Text(
                    "${friendsList[i]['lastMsg']}",
                    style: TextStyle(fontFamily: 'Roboto', color: Colors.black),
                  ),
                  trailing: Container(
                    width: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("${friendsList[i]['lastMsgTime']}")
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            }),
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
            items: const [
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
