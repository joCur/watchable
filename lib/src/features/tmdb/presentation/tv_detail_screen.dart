import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';
import 'package:watchable/src/features/tmdb/presentation/components/add_to_watchlist.dart';
import 'package:watchable/src/features/tmdb/presentation/components/genre_list.dart';
import 'package:watchable/src/features/tmdb/presentation/components/media_header.dart';
import 'package:watchable/src/features/tmdb/presentation/components/media_overview.dart';
import 'package:watchable/src/features/tmdb/presentation/components/videos_list.dart';

import '../../common/presentation/spinner.dart';

class TvDetailScreen extends HookConsumerWidget {
  static const String route = 'tv/:id';
  static const String name = 'TvDetail';

  final int id;

  const TvDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tv = ref.watch(getTvByIdProvider(id));
    final videos = ref.watch(getTvVideosByIdProvider(id));
    final isLoading = tv.maybeWhen(data: (_) => false, orElse: () => true);
    final isLoadingVideos = videos.maybeWhen(data: (_) => false, orElse: () => true);

    final scrollController = useScrollController();

    return Scaffold(
      body: isLoading
          ? const Center(child: Spinner())
          : PrimaryScrollController(
              controller: scrollController,
              child: CupertinoScrollbar(
                child: CustomScrollView(
                  slivers: [
                    const SliverAppBar(pinned: true),
                    if (isLoadingVideos)
                      SliverToBoxAdapter(
                          child: Image.network("https://image.tmdb.org/t/p/w1280${tv.value!.backdropPath}", fit: BoxFit.cover)),
                    if (!isLoadingVideos) MediaHeader(tv.value!, videos: videos.value!),
                    const SliverPadding(padding: EdgeInsets.all(Sizes.p8)),
                    MediaOverview(tv.value!),
                    const SliverPadding(padding: EdgeInsets.all(Sizes.p16)),
                    AddToWatchlist(tv.value!, onPressed: null),
                    GenreList(tv.value!.genres),
                    VideosList(videos),
                  ],
                ),
              ),
            ),
    );
  }
}
