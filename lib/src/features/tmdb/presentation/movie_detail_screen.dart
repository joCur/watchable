import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';

import 'components/media_detail_content.dart';

class MovieDetailScreen extends HookConsumerWidget {
  static const String route = 'movies/:id';
  static const String name = 'MovieDetail';

  final int id;

  const MovieDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movie = ref.watch(getMovieByIdProvider(id));
    final isLoading = movie.maybeWhen(data: (_) => false, orElse: () => true);

    ref.listen(getMovieByIdProvider(id), (_, state) {
      state.showToastOnError(context);
    });

    return MediaDetailContent(movie.valueOrNull, isLoading: isLoading);
  }
}
