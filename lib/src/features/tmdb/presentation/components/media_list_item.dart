import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/domain/media_preview.dart';

import '../movie_detail_screen.dart';
import '../tv_detail_screen.dart';

class MediaListItem extends StatelessWidget {
  final MediaPreview item;

  const MediaListItem(this.item, {super.key});

  _onTap(BuildContext context) {
    if (item is MoviePreview) {
      context.pushNamed(MovieDetailScreen.name, pathParameters: {'id': item.id.toString()});
    } else if (item is TvPreview) {
      context.pushNamed(TvDetailScreen.name, pathParameters: {'id': item.id.toString()});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 120),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child:
              item.backdropPath == null ? Container() : CachedNetworkImage(imageUrl: "https://image.tmdb.org/t/p/w92${item.backdropPath}"),
        ),
      ),
      title: Text(item.title),
      subtitle: Text(
        item.overview,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),
      ),
      onTap: () => _onTap(context),
    );
  }
}
