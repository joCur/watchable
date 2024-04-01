import 'package:flutter/material.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/presentation/components/tagline.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../constants/app_sizes.dart';
import '../../domain/media.dart';
import '../../domain/videos.dart';

class MediaHeader extends StatefulWidget {
  final Media media;
  final Videos videos;

  const MediaHeader(this.media, {required this.videos, super.key});

  @override
  State<MediaHeader> createState() => _MediaHeaderState();
}

class _MediaHeaderState extends State<MediaHeader> {
  late final YoutubePlayerController _controller;

  bool isMuted = true;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: widget.videos.results.firstWhere((e) => e.type == "Trailer").key,
      flags: const YoutubePlayerFlags(autoPlay: true, mute: true, enableCaption: false, forceHD: true),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            topActions: [
              const Spacer(),
              IconButton(
                onPressed: () {
                  isMuted ? _controller.unMute() : _controller.mute();
                  setState(() => isMuted = !isMuted);
                },
                icon: isMuted ? const Icon(Icons.volume_off, color: Colors.white) : const Icon(Icons.volume_up, color: Colors.white),
              ),
            ],
            bottomActions: [
              ProgressBar(isExpanded: true),
              RemainingDuration(),
            ],
          ),
          gapH8,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
            child: Text(widget.media.title, style: context.textTheme.titleLarge),
          ),
          gapH8,
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              child: Tagline(
                widget.media,
                runtime: widget.media is Movie ? (widget.media as Movie).runtime : (widget.media as Tv).lastEpisodeToAir.runtime,
                episodeCount: widget.media is Tv ? (widget.media as Tv).numberOfEpisodes : null,
                seasonCount: widget.media is Tv ? (widget.media as Tv).numberOfSeasons : null,
              )),
        ],
      ),
    );
  }
}
