import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/group_media/domain/group_media.dart';

class GroupMediaItem extends ConsumerWidget {
  final GroupMedia item;

  const GroupMediaItem(this.item, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 120),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: item.media.backdropPath == null
              ? null
              : CachedNetworkImage(imageUrl: "https://image.tmdb.org/t/p/w92${item.media.backdropPath}"),
        ),
      ),
      title: Text(item.media.title),
      subtitle: Text(
        item.media.overview,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),
      ),
      onTap: null,
    );
  }
}
