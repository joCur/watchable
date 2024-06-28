import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_text.dart';
import 'package:watchable/src/features/group_media/application/get_group_media_controller.dart';
import 'package:watchable/src/features/tmdb/presentation/components/media_backdrop_image.dart';

import '../../../constants/app_sizes.dart';
import '../../tmdb/presentation/components/genre_list.dart';
import '../../tmdb/presentation/components/media_header.dart';
import '../../tmdb/presentation/components/media_overview.dart';
import '../../tmdb/presentation/components/videos_list.dart';

class GroupMediaDetailScreen extends HookConsumerWidget {
  static const String route = 'media/:media_id';
  static const String name = 'GroupMediaDetail';

  final String id;

  const GroupMediaDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(getGroupMediaItemByIdProvider(id));
    final isLoading = item.maybeWhen(data: (_) => false, orElse: () => true);

    ref.listen(getGroupMediaItemByIdProvider(id), (_, value) => value.showToastOnError(context));

    final groupMedia = item.valueOrNull?.item;
    final media = item.valueOrNull?.media;
    final hasVideos = media?.videos.results.isNotEmpty ?? false;

    return Scaffold(
      appBar: AppBar(title: isLoading ? ShimmerText(height: context.textTheme.bodyLarge!.fontSize, width: 200) : Text(media!.title)),
      body: CustomScrollView(
        cacheExtent: 300,
        slivers: [
          if (!hasVideos) SliverToBoxAdapter(child: MediaBackdropImage(media?.backdropPath)),
          if (hasVideos) MediaHeader(media!, videos: media.videos),
          const SliverPadding(padding: EdgeInsets.all(Sizes.p8)),
          MediaOverview(media),
          const SliverPadding(padding: EdgeInsets.all(Sizes.p16)),
          // ToDo: show widget to react or reactions of the group
          if (!isLoading) GenreList(media!.genres),
          if (!isLoading) VideosList(media!.videos),
        ],
      ),
    );
  }
}
