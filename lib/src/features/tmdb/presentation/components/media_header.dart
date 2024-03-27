import 'package:flutter/material.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/domain/media_details.dart';
import 'package:watchable/src/features/tmdb/domain/movie_details.dart';
import 'package:watchable/src/features/tmdb/domain/tv_details.dart';
import 'package:watchable/src/features/tmdb/presentation/components/tagline.dart';

import '../../../../constants/app_sizes.dart';

class MediaHeader extends StatelessWidget {
  final MediaDetails media;

  const MediaHeader(this.media, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network("https://image.tmdb.org/t/p/original/${media.backdropPath}"),
          gapH8,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
            child: Text(media.title, style: context.textTheme.titleLarge),
          ),
          gapH8,
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              child: Tagline(
                media,
                runtime: media is MovieDetails ? (media as MovieDetails).runtime : (media as TvDetails).lastEpisodeToAir.runtime,
                episodeCount: media is TvDetails ? (media as TvDetails).numberOfEpisodes : null,
                seasonCount: media is TvDetails ? (media as TvDetails).numberOfSeasons : null,
              )),
        ],
      ),
    );
  }
}
