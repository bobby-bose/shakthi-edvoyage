import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_aadi/screens/Profile_screen/profile_Tab/profile_feed.dart';
import 'package:login_aadi/screens/UniversityScreen/tabs/FeedTab.dart';

import '../../Payment_screen/payment.dart';
import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';
import '../../../widgets/sort_button.dart';
import 'favoritetab/coursestabforprofile.dart';
import 'favoritetab/universitytabforprofile.dart';

class ProfileFevourites extends StatefulWidget {
  @override
  _ProfileFevouritesState createState() => _ProfileFevouritesState();
}

class _ProfileFevouritesState extends State<ProfileFevourites>
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

  Screen? size;
  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        color: titlecolor);
    size = Screen(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: play,
      body: SingleChildScrollView(
        child: Container(
          color: color3,
          height: 500,
          child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: color3,
                  elevation: 0,
                  bottom: TabBar(
                      isScrollable: false,
                      padding: EdgeInsets.zero,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Cprimary),
                      tabs: [
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: secondaryColor, width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("University "),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: secondaryColor, width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Courses"),
                            ),
                          ),
                        ),
                      ]),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(children: [
                    profileuniversity(),
                    profilecourses(),
                  ]),
                ),
              )),
        ),
      ),
    );
  }
}
