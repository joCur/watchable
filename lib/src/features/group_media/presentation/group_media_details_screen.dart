import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/group_media/application/delete_group_media_controller.dart';
import 'package:watchable/src/features/group_media/application/update_group_media_controller.dart';

import '../../../constants/app_sizes.dart';
import '../../../extensions/build_context_extensions.dart';
import '../../common/presentation/shimmer/shimmer_text.dart';
import '../../groups/data/group_repository.dart';
import '../../profile/data/profile_repository.dart';
import '../../tmdb/data/tmdb_repository.dart';
import '../../tmdb/presentation/components/genre_list.dart';
import '../../tmdb/presentation/components/media_backdrop_image.dart';
import '../../tmdb/presentation/components/media_header.dart';
import '../../tmdb/presentation/components/media_overview.dart';
import '../../tmdb/presentation/components/videos_list.dart';
import '../application/get_group_media_controller.dart';
import '../data/group_media_repository.dart';
import '../domain/group_media_type.dart';
import 'components/group_media_tagline.dart';

class GroupMediaDetailScreen extends HookConsumerWidget {
  static const String route = 'media/:media_id';
  static const String name = 'GroupMediaDetail';

  final String id;

  const GroupMediaDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = ref.watch(watchGroupMediaProvider).requireValue.firstWhere((element) => element.id == id);
    final media = item.mediaType == GroupMediaType.movie ? ref.watch(getMovieByIdProvider(item.tmdbId)) : ref.watch(getTvByIdProvider(item.tmdbId));
    final isLoading = media.maybeWhen(data: (_) => false, orElse: () => true);

    ref.listen(getGroupMediaItemByIdProvider(id), (previous, value) => value.showToastOnError(context, previous: previous));
    ref.listen(
      updateGroupMediaControllerProvider,
      (_, value) => value.showToastOnError(context, message: LocaleKeys.errors_markAsWatchedFailed.tr()),
    );
    ref.listen(deleteGroupMediaControllerProvider, (_, value) => value.showToastOnError(context, message: LocaleKeys.errors_deleteGroupMediaFailed.tr()));

    final hasVideos = media.valueOrNull?.videos.results.isNotEmpty ?? false;

    return Scaffold(
      appBar: AppBar(title: isLoading ? ShimmerText(height: context.textTheme.bodyLarge!.fontSize, width: 200) : Text(media.value!.title)),
      body: CustomScrollView(
        cacheExtent: 300,
        slivers: [
          if (!hasVideos) SliverToBoxAdapter(child: MediaBackdropImage(media.value?.backdropPath)),
          if (hasVideos) MediaHeader(media.value!, videos: media.value!.videos),
          const SliverPadding(padding: EdgeInsets.all(Sizes.p4)),
          if (item.addedBy != null)
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
              sliver: SliverToBoxAdapter(
                child: GroupMediaTagline(
                  creator: ref.watch(getProfileByIdProvider(item.addedBy!)),
                  group: ref.watch(getGroupByIdProvider(item.groupId)),
                ),
              ),
            ),
          const SliverPadding(padding: EdgeInsets.all(Sizes.p4)),
          MediaOverview(media.valueOrNull),
          const SliverPadding(padding: EdgeInsets.all(Sizes.p16)),
          // ToDo: show widget to react or reactions of the group
          if (!isLoading)
            SliverPadding(
              padding: EdgeInsets.all(Sizes.p16),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Vorschlagen')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => ref.read(updateGroupMediaControllerProvider.notifier).execute(id, !item.isWatched),
                          icon: Icon(item.isWatched ? Icons.check_circle : Icons.check_circle_outline),
                        ),
                        IconButton(
                          onPressed: () async {
                            await ref.read(deleteGroupMediaControllerProvider.notifier).execute(id);
                            if (!context.mounted) return;
                            context.pop();
                          },
                          icon: Icon(Icons.delete),
                        ),
                        // IconButton(
                        //   onPressed: () {},
                        //   visualDensity: VisualDensity.compact,
                        //   icon: Icon(Icons.share_sharp),
                        // ),
                        // IconButton(
                        //   onPressed: () {},
                        //   visualDensity: VisualDensity.compact,
                        //   icon: Icon(Icons.more_vert),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          if (!isLoading) GenreList(media.value!.genres),
          if (!isLoading) VideosList(media.value!.videos),
        ],
      ),
    );
  }
}
