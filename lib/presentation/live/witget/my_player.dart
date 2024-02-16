import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const MyPlayer());

/// Stateful widget to fetch and then display video content.
class MyPlayer extends StatefulWidget {
  const MyPlayer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyPlayerState createState() => _MyPlayerState();
}

class _MyPlayerState extends State<MyPlayer> {
  late VideoPlayerController _controller;

// https://stream.wibudev.com/live/bips-MacBook-Air-local.flv
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://stream.wibudev.com/live/bips-MacBook-Air-local.flv'), videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: true,))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}