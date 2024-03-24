import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';
import 'package:watchable/src/features/tmdb/presentation/components/movie_tagline.dart';

import '../../common/presentation/spinner.dart';

class _SliverCustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverCustomHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverCustomHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight || child != oldDelegate.child;
  }
}

class MovieDetailScreen extends ConsumerWidget {
  static const String route = 'movies/:id';
  static const String name = 'MovieDetail';

  final int id;

  const MovieDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movie = ref.watch(getMovieByIdProvider(id));
    final videos = ref.watch(getMovieVideosByIdProvider(id));
    final isLoading = movie.maybeWhen(data: (_) => false, orElse: () => true);

    return Scaffold(
      body: isLoading
          ? const Center(child: Spinner())
          : NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  pinned: true,
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(title: Text(movie.value!.title)),
                ),
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
              ],
              body: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(movie.value!.overview),
                  ),
                  if (videos.valueOrNull != null)
                    for (final video in videos.value!.results) ListTile(title: Text(video.name), onTap: () => {}),
                ],
              ),
            ),
    );
  }
}
