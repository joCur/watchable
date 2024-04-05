import 'package:flutter/material.dart';
import 'package:watchable/src/features/tmdb/domain/media.dart';
import 'package:watchable/src/features/tmdb/presentation/components/videos_list.dart';

import '../../../../constants/app_sizes.dart';
import '../../../common/presentation/spinner.dart';
import 'add_to_watchlist.dart';
import 'genre_list.dart';
import 'media_header.dart';
import 'media_overview.dart';

class MediaDetailContent extends StatelessWidget {
  final Media? media;
  final bool isLoading;

  const MediaDetailContent(this.media, {this.isLoading = false, super.key});

  @override
  Widget build(BuildContext context) {
    if (isLoading || media == null) {
      return Scaffold(appBar: AppBar(), body: const Center(child: Spinner()));
    }

    bool hasVideos = media!.videos.results.isNotEmpty;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(pinned: true),
          if (!hasVideos)
            SliverToBoxAdapter(
              child: Image.network("https://image.tmdb.org/t/p/w1280${media!.backdropPath}", fit: BoxFit.cover),
            ),
          if (hasVideos) MediaHeader(media!, videos: media!.videos),
          const SliverPadding(padding: EdgeInsets.all(Sizes.p8)),
          MediaOverview(media!),
          const SliverPadding(padding: EdgeInsets.all(Sizes.p16)),
          AddToWatchlist(media!),
          GenreList(media!.genres),
          VideosList(media!.videos),
        ],
      ),
    );
  }
}
