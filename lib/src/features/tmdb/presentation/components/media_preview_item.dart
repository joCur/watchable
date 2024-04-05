import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constants/app_sizes.dart';
import '../../domain/media_preview.dart';
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
          child: FancyShimmerImage(
            imageUrl: "https://image.tmdb.org/t/p/original/${item.posterPath}",
            width: double.infinity,
            height: double.infinity,
            boxFit: BoxFit.fitWidth,
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
