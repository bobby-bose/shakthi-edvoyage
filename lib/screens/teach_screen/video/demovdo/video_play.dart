import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:login_aadi/utils/colors/colors.dart';
import 'package:video_player/video_player.dart';

import 'global.dart';

class VideoPlay extends StatefulWidget {
  const VideoPlay({Key? key}) : super(key: key);

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          VideoPlayerView(
            url: 'https://youtu.be/aDlv2UX1lA8?list=RDaDlv2UX1lA8',
            dataSourceType: DataSourceType.network,
          )
        ],
      ),
    );
  }
}

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({
    super.key,
    required this.url,
    required this.dataSourceType,
  });

  final String url;
  final DataSourceType dataSourceType;
  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    switch (widget.dataSourceType) {
      case DataSourceType.network:
        _videoPlayerController = VideoPlayerController.network(widget.url);
        break;
      case DataSourceType.asset:
        // TODO: Handle this case.
        break;
      case DataSourceType.file:
        // TODO: Handle this case.
        break;
      case DataSourceType.contentUri:
        // TODO: Handle this case.
        break;
    }
    _chewieController = ChewieController(
        videoPlayerController: videoPlayerController, aspectRatio: 16 / 9);
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.dataSourceType.name.toUpperCase()),
        Divider(),
        AspectRatio(
            aspectRatio: 16 / 9, child: Chewie(controller: _chewieController))
      ],
    );
  }
}
