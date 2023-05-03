import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

List<String> videos = [
  'https://www.youtube.com/watch?v=aDlv2UX1lA8&list=RDaDlv2UX1lA8&start_radio=1',
  'https://www.youtube.com/watch?v=aDlv2UX1lA8&list=RDaDlv2UX1lA8&start_radio=1',
  'https://www.youtube.com/watch?v=aDlv2UX1lA8&list=RDaDlv2UX1lA8&start_radio=1',
  'https://www.youtube.com/watch?v=aDlv2UX1lA8&list=RDaDlv2UX1lA8&start_radio=1',
  'https://www.youtube.com/watch?v=aDlv2UX1lA8&list=RDaDlv2UX1lA8&start_radio=1',
];

VideoPlayerController videoPlayerController = VideoPlayerController.network('');
ValueNotifier<Future<void>?> videoFuture = ValueNotifier(null);
