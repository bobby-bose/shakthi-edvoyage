import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';

class ProfileFeed extends StatefulWidget {
  @override
  _ProfileFeedState createState() => _ProfileFeedState();
}

class _ProfileFeedState extends State<ProfileFeed>
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

  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 16.0,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        color: titlecolor);
    return Scaffold(
        floatingActionButton: _tabController!.index == 0
            ? FloatingActionButton(
                backgroundColor: Colors.pink,
                child: Icon(Icons.add),
                onPressed: () => print(Localizations.localeOf(context)),
              )
            : Container(),
        backgroundColor: color3,
        body: Center(
            child: Text(
          "Comming Soon . . . .",
          style: labelTextStyle,
        )));
  }
}
