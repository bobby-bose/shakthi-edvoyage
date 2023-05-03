import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'global.dart';

Future<void> play(String url) async {
  if (url.isEmpty) return;
  if (videoPlayerController.value.isInitialized) {
    await videoPlayerController
        .initialize()
        .then((value) => {videoPlayerController.play()});
  }
}
