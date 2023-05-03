import 'package:flutter/material.dart';
import 'dart:async';

import 'package:reviews_slider/reviews_slider.dart';

class DevoyageTab extends StatefulWidget {
  @override
  State<DevoyageTab> createState() => _DevoyageTabState();
}

class _DevoyageTabState extends State<DevoyageTab> {
  late int activeMeterIndex;
  final StreamController activeMeterIndexStreamControl =
      StreamController.broadcast();

  Stream get onUpdateActiveIndex => activeMeterIndexStreamControl.stream;

  void updateExpansionTile() =>
      activeMeterIndexStreamControl.sink.add(activeMeterIndex);
  int? selectedValue1;

  void onChange1(int value) {
    setState(() {
      selectedValue1 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text(
            'How was the help you received?',
            style: TextStyle(
                fontFamily: 'Roboto', color: Color(0xFF6f7478), fontSize: 18),
          ),
          SizedBox(height: 20),
          ReviewSlider(
            onChange: onChange1,
          ),
        ],
      ),
    ));
  }
}
