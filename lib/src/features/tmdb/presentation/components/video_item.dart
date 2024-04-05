import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/presentation/video_player_screen.dart';

import '../../domain/video.dart';

class VideoItem extends StatelessWidget {
  final Video item;

  const VideoItem(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 100),
        child: FancyShimmerImage(
          imageUrl: "https://i.ytimg.com/vi/${item.key}/hqdefault.jpg",
          width: double.infinity,
          height: double.infinity,
          boxFit: BoxFit.cover,
        ),
      ),
      title: Text(item.type),
      subtitle: Text(
        item.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),
      ),
      trailing: const Icon(Icons.play_circle_outline),
      dense: true,
      contentPadding: EdgeInsets.zero,
      isThreeLine: false,
      minVerticalPadding: 0,
      onTap: () => context.pushNamed(VideoPlayerScreen.name, pathParameters: {"id": item.key}),
    );
  }
}
