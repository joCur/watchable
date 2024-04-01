import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/common/presentation/spinner.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';
import 'package:watchable/src/features/tmdb/presentation/components/add_to_watchlist.dart';
import 'package:watchable/src/features/tmdb/presentation/components/genre_list.dart';
import 'package:watchable/src/features/tmdb/presentation/components/media_header.dart';
import 'package:watchable/src/features/tmdb/presentation/components/media_overview.dart';
import 'package:watchable/src/features/tmdb/presentation/components/videos_list.dart';

class MovieDetailScreen extends HookConsumerWidget {
  static const String route = 'movies/:id';
  static const String name = 'MovieDetail';

  final int id;

  const MovieDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movie = ref.watch(getMovieByIdProvider(id));
    final videos = ref.watch(getMovieVideosByIdProvider(id));
    final isLoading = movie.maybeWhen(data: (_) => false, orElse: () => true);
    final isLoadingVideos = videos.maybeWhen(data: (_) => false, orElse: () => true);

    final scrollController = useScrollController();

    ref.listen(getMovieByIdProvider(id), (_, state) {
      state.showToastOnError(context);
    });

    if (isLoading) {
      return Scaffold(appBar: AppBar(), body: const Center(child: Spinner()));
    }

    return Scaffold(
      body: PrimaryScrollController(
        controller: scrollController,
        child: CupertinoScrollbar(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(pinned: true),
              if (isLoadingVideos)
                SliverToBoxAdapter(child: Image.network("https://image.tmdb.org/t/p/w1280${movie.value!.backdropPath}", fit: BoxFit.cover)),
              if (!isLoadingVideos) MediaHeader(movie.value!, videos: videos.value!),
              const SliverPadding(padding: EdgeInsets.all(Sizes.p8)),
              MediaOverview(movie.value!),
              AddToWatchlist(movie.value!),
              const SliverPadding(padding: screenPadding),
              GenreList(movie.value!.genres),
              VideosList(videos),
            ],
          ),
        ),
      ),
    );
  }
}
