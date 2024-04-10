import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/domain/media_preview.dart';

import '../../../../constants/app_sizes.dart';
import '../../../common/presentation/image_list_tile.dart';
import '../movie_detail_screen.dart';
import '../tv_detail_screen.dart';
import 'poster_image.dart';

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
    return ImageListTile(
      onTap: () => _onTap(context),
      leading: PosterImage(item.posterPath),
      title: Text(item.title, overflow: TextOverflow.ellipsis),
      titleContentSpacing: Sizes.p4,
      content: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.overview,
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
