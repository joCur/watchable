import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
  static const String route = '/videos/:id';
  static const String name = 'VideoPlayer';

  final String videoId;

  const VideoPlayerScreen(this.videoId, {super.key});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late final YoutubePlayerController _controller;

  bool isMuted = true;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(autoPlay: true, mute: true, enableCaption: false, forceHD: true),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: YoutubePlayer(
        controller: _controller,
        topActions: [
          IconButton(onPressed: context.pop, icon: const Icon(Icons.arrow_back, color: Colors.white)),
          const Spacer(),
          IconButton(
            onPressed: () {
              isMuted ? _controller.unMute() : _controller.mute();
              setState(() => isMuted = !isMuted);
            },
            icon: isMuted ? const Icon(Icons.volume_off, color: Colors.white) : const Icon(Icons.volume_up, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
