import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../UniversityScreen/Study_Abroad_Screen.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/long_button.dart';

class ApplicationTab extends StatefulWidget {
  final String title = "Stepper Demo";
  @override
  State<StatefulWidget> createState() => _ApplicationTabState();
}

class _ApplicationTabState extends State<ApplicationTab> {
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Text('Hello!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('World!'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cblack10,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                height: getHeight(context) / 1.2,
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.1,
                      isFirst: true,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.deepOrange,
                      ),
                      beforeLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                    ),
                    const TimelineDivider(
                      begin: 0.1,
                      end: 0.9,
                      color: text5,
                      thickness: 2,
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.9,
                      beforeLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                      afterLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                    const TimelineDivider(
                      begin: 0.1,
                      end: 0.9,
                      color: text5,
                      thickness: 2,
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.1,
                      beforeLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                      afterLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                    const TimelineDivider(
                      begin: 0.1,
                      end: 0.9,
                      color: text5,
                      thickness: 2,
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.9,
                      beforeLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                      afterLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                    const TimelineDivider(
                      begin: 0.1,
                      end: 0.9,
                      color: text5,
                      thickness: 2,
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.1,
                      beforeLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                      afterLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                    const TimelineDivider(
                      begin: 0.1,
                      end: 0.9,
                      color: text5,
                      thickness: 2,
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.manual,
                      lineXY: 0.9,
                      isLast: true,
                      indicatorStyle: const IndicatorStyle(
                        width: 20,
                        color: Colors.deepOrange,
                      ),
                      beforeLineStyle: const LineStyle(
                        color: text5,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              vGap(10),
              LongButton(action: () {}, text: 'Apply Now'),
            ],
          ),
        ),
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Center(
          child: Stepper(
    controlsBuilder: (context, _) {
      return Row(
        children: <Widget>[],
      );
    },
    type: StepperType.horizontal,
    steps: const [
      Step(
        title: Text("Step 1"),
        content: Text(""),
      ),
      Step(
        title: Text("Step 2"),
        content: Text("Information step 2"),
      ),
      Step(
        title: Text("Step 3"),
        content: Text("Information step 3"),
      ),
    ],
  )));
}
