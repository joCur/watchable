import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/app_sizes.dart';
import '../../domain/media_preview.dart';
import '../../domain/movie_preview.dart';
import '../../domain/tv_preview.dart';
import '../movie_detail_screen.dart';
import '../tv_detail_screen.dart';

class MediaPreviewItem extends StatelessWidget {
  final MediaPreview item;

  const MediaPreviewItem(this.item, {super.key});

  _onTap(BuildContext context) {
    if (item is MoviePreview) {
      context.pushNamed(MovieDetailScreen.name, pathParameters: {'id': item.id.toString()});
    } else if (item is TvPreview) {
      context.pushNamed(TvDetailScreen.name, pathParameters: {'id': item.id.toString()});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.p16),
          child: CachedNetworkImage(
            imageUrl: "https://image.tmdb.org/t/p/original/${item.posterPath}",
            progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
              width: double.infinity,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
              ),
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              customBorder: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Sizes.p16)),
              onTap: () => _onTap(context),
            ),
          ),
        ),
      ],
    );
  }
}
