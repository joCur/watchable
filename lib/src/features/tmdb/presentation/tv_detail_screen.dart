import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';
import 'package:watchable/src/features/tmdb/presentation/components/media_detail_content.dart';

class TvDetailScreen extends HookConsumerWidget {
  static const String route = 'tv/:id';
  static const String name = 'TvDetail';

  final int id;

  const TvDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tv = ref.watch(getTvByIdProvider(id));
    final isLoading = tv.maybeWhen(data: (_) => false, orElse: () => true);

    ref.listen(getTvByIdProvider(id), (_, state) {
      state.showToastOnError(context);
    });

    return MediaDetailContent(tv.valueOrNull, isLoading: isLoading);
  }
}
