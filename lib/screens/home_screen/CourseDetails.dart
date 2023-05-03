import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import 'Devoyage_screen.dart';
import 'application_screen.dart';
import 'couese.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);
  static const routeName = '/search-screen';

  @override
  _CourseDetailsState createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: White,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            )),
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'De vo',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      color: primaryColor)),
              TextSpan(
                  text: 'y',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      color: secondaryColor)),
              TextSpan(
                  text: 'age',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      color: primaryColor)),
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
                    Icon(Icons.edit)
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
              ],
            ),
            vGap(5),
            Container(
              color: White,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  labelColor: Cprimary,
                  controller: _tabController,
                  indicatorColor: Cprimary,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(fontSize: 18.0, color: Colors.orange),
                  unselectedLabelStyle:
                      Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 16.0,
                            color: Colors.grey[200],
                          ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(child: Text('Course')),
                    Tab(child: Text('Application')),
                    Tab(child: Text('Veyoyage')),
                  ],
                ),
                // UIHelper.verticalSpaceSmall(),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  coursesTab(),
                  ApplicationTab(),
                  DevoyageTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
