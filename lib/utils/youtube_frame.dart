// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:uniplexs/constant/color_pallet.dart';

class YoutubeFrame extends StatefulWidget {
  final String videoKey;
  const YoutubeFrame({
    Key? key,
    required this.videoKey,
  }) : super(key: key);

  @override
  State<YoutubeFrame> createState() => _YoutubeFrameState();
}

class _YoutubeFrameState extends State<YoutubeFrame> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    initVid();
    super.initState();
  }

  void initVid() async {
    try {
      _controller = YoutubePlayerController(
        initialVideoId: widget.videoKey,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
        ),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        liveUIColor: primaryColor,
        progressColors: const ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
      builder: (p0, p1) {
        return const SizedBox();
      },
    );
  }
}
