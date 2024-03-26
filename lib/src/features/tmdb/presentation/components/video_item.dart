import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';

import '../../domain/video.dart';

class VideoItem extends StatelessWidget {
  final Video item;

  const VideoItem(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 100),
        child: CachedNetworkImage(
          imageUrl: "https://i.ytimg.com/vi/${item.key}/hqdefault.jpg",
          fit: BoxFit.cover,
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
      onTap: () {},
    );
  }
}