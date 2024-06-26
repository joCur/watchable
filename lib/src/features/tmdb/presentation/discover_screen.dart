import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:watchable/src/features/tmdb/application/tmdb_search_delegate.dart';
import 'package:watchable/src/features/tmdb/presentation/components/media_tab_chip.dart';
import 'package:watchable/src/features/tmdb/presentation/discover_all_tab.dart';
import 'package:watchable/src/features/tmdb/presentation/discover_movies_tab.dart';
import 'package:watchable/src/features/tmdb/presentation/discover_tv_tab.dart';

import '../../../constants/app_sizes.dart';
import '../../profile/data/profile_repository.dart';
import '../../profile/presentation/components/profile_avatar.dart';
import '../application/search_controller.dart';

class DiscoverScreen extends HookConsumerWidget {
  static const String route = '/discover';
  static const String name = 'Discover';

  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getCurrentUserProfileProvider);
    final currentMediaType = ref.watch(searchControllerProvider);
    const searchContent = {
      MediaType.all: DiscoverAllTab(),
      MediaType.movie: DiscoverMoviesTab(),
      MediaType.tv: DiscoverTvTab(),
    };

    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: const EdgeInsets.all(Sizes.p8), child: ProfileAvatar(profile)),
        titleSpacing: 0.0,
        title: const Wrap(
          spacing: Sizes.p8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            MediaTabChip(value: MediaType.all),
            MediaTabChip(value: MediaType.movie),
            MediaTabChip(value: MediaType.tv),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => showSearch(context: context, delegate: TmdbSearchDelegate()),
          ),
        ],
      ),
      body: searchContent[currentMediaType],
    );
  }
}
