import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';
import 'package:watchable/src/features/tmdb/presentation/components/genre_list.dart';
import 'package:watchable/src/features/tmdb/presentation/components/movie_tagline.dart';

import '../../common/presentation/spinner.dart';
import 'components/video_item.dart';

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
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("https://image.tmdb.org/t/p/original/${movie.value!.backdropPath}"),
                          gapH8,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
                            child: Text(movie.value!.title, style: context.textTheme.titleLarge),
                          ),
                          gapH8,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
                            child: MovieTagline(movie.value!),
                          ),
                        ],
                      ),
                    ),
                    const SliverPadding(padding: EdgeInsets.all(Sizes.p8)),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
                      sliver: SliverToBoxAdapter(child: Text(movie.value!.overview)),
                    ),
                    const SliverPadding(padding: screenPadding),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p8),
                      sliver: SliverToBoxAdapter(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(onPressed: () {}, child: const Text("Add to watchlist")),
                              ),
                            ),
                            gapW16,
                            const Icon(Icons.star, size: Sizes.p24, color: Colors.orange),
                            gapW4,
                            Text(movie.value!.voteAverage.roundToDouble().toString(), style: context.textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ),
                    GenreList(movie.value!.genres),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p8),
                      sliver: SliverList.builder(
                        itemCount: videos.value!.results.length,
                        itemBuilder: (context, index) => VideoItem(videos.value!.results[index]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
