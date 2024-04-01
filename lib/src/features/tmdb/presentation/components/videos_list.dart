import 'package:flutter/material.dart';
import 'package:watchable/src/features/tmdb/domain/videos.dart';

import '../../../../constants/app_sizes.dart';
import 'video_item.dart';

class VideosList extends StatelessWidget {
  final Videos videos;

  const VideosList(this.videos, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p8),
      sliver: SliverList.builder(
        itemCount: videos.results.length,
        itemBuilder: (context, index) => VideoItem(videos.results[index]),
      ),
    );
  }
}
