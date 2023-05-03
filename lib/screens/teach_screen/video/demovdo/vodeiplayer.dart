import 'package:flutter/material.dart';
import 'package:login_aadi/screens/teach_screen/video/demovdo/global.dart';
import 'package:login_aadi/screens/teach_screen/video/demovdo/video_play.dart';
import 'package:login_aadi/screens/teach_screen/video/demovdo/functions.dart';
import 'package:video_player/video_player.dart';

class VideoPlayers extends StatefulWidget {
  const VideoPlayers(VideoPlayerController videoPlayerController, {Key? key})
      : super(key: key);

  @override
  State<VideoPlayers> createState() => _VideoPlayersState();
}

class _VideoPlayersState extends State<VideoPlayers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ValueListenableBuilder(
                valueListenable: videoFuture,
                builder: (context, value, child) {
                  return AspectRatio(
                      aspectRatio: 16 / 9,
                      child: value == null
                          ? Container()
                          : FutureBuilder(
                              future: value,
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.done) {
                                  return VideoPlayers(videoPlayerController);
                                } else {
                                  return Container();
                                }
                              }));
                })
          ],
        ),
      )),
    );
  }
}
