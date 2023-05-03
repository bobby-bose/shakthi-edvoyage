import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:login_aadi/widgets/sort_button.dart';
import 'package:login_aadi/widgets/timer_button.dart';
import 'dart:math' as math;

import '../../utils/responsive.dart';

class TimerOne extends StatefulWidget {
  @override
  _TimerOneState createState() => _TimerOneState();
}

class _TimerOneState extends State<TimerOne> {
  static const countdownDuration = Duration(minutes: 60);
  Duration duration = Duration();
  Timer? timer;

  bool countDown = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reset();
  }

  void reset() {
    if (countDown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = Duration());
    }
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    final addSeconds = countDown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void stopTimer({bool resets = true}) {
    if (resets) {
      reset();
    }
    setState(() => timer?.cancel());
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        //size = Screen(MediaQuery.of(context).size);

        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: White,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            ),
          ),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: Transform.rotate(
                      angle: 360 * math.pi / 240,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Cprimary,
                      ),
                    ),
                  ),
                  buildTime(),
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 40.0),
                  //   child: ImageIcon(AssetImage("assets/Stroke 3.png")),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 45.0),
                    child: Transform.rotate(
                      angle: 360 * math.pi / 240,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Cprimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: getHeight(context) / 2,
              width: getWidth(context) / 2,
              child: Image.asset('assets/timer1.png'),
            ),
            buildButtons()
          ],
        ),
      );

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      buildTimeCard(time: hours, header: ''),
      SizedBox(
        width: 8,
      ),
      buildTimeCard(time: minutes, header: ''),
      SizedBox(
        width: 8,
      ),
      buildTimeCard(time: seconds, header: ''),
    ]);
  }

  Widget buildTimeCard({required String time, required String header}) => Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  time,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Cprimary,
                      fontSize: 50),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(header, style: TextStyle(color: Colors.black45)),
            ],
          ),
        ],
      );

  Widget buildButtons() {
    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = duration.inSeconds == 0;
    return isRunning || isCompleted
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SortButton(
                  text: 'STOP',
                  action: () {
                    if (isRunning) {
                      stopTimer(resets: true);
                    }
                  }),
              SizedBox(
                width: 12,
              ),
            ],
          )
        : timerButton(
            text: "Start",
            color: Cprimary,
            // backgroundColor: Colors.white,
            action: () {
              startTimer();
            });
  }
}
