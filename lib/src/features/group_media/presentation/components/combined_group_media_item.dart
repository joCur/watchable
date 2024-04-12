import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/group_media/domain/group_media_type.dart';
import 'package:watchable/src/features/group_media/presentation/components/loading_group_media_item.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/group_detail_screen.dart';
import 'package:watchable/src/features/profile/data/profile_repository.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../common/presentation/image_list_tile.dart';
import '../../../tmdb/presentation/components/poster_image.dart';
import '../../domain/group_media.dart';
import 'title_with_creator.dart';

class CombinedGroupMediaItem extends ConsumerWidget {
  final GroupMedia item;

  const CombinedGroupMediaItem(this.item, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = item.addedBy == null ? null : ref.watch(getProfileByIdProvider(item.addedBy!));
    final media =
        item.mediaType == GroupMediaType.movie ? ref.watch(getMovieByIdProvider(item.tmdbId)) : ref.watch(getTvByIdProvider(item.tmdbId));

    final isLoading =
        media.maybeWhen(data: (_) => false, orElse: () => true) || (profile?.maybeWhen(data: (_) => false, orElse: () => true) ?? false);

    if (isLoading) return const LoadingMediaItem();

    return ImageListTile(
      leading: PosterImage(media.value!.posterPath),
      title: TitleWithCreator(title: media.value!.title, creator: profile?.value!),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(media.value!.releaseDate.year.toString(), style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
          gapH4,
          Text(
            media.value!.overview,
            maxLines: 3,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ActionChip(
                padding: EdgeInsets.zero,
                side: BorderSide.none,
                visualDensity: VisualDensity.compact,
                onPressed: () {
                  context.pushNamed(GroupDetailScreen.name, pathParameters: {'id': item.groupId.toString()});
                },
                label: Text(ref.watch(getCurrentUserGroupByIdProvider(item.groupId)).name),
              ),
              const Spacer(),
              // MediaVotingWidget(onVote: (_) {}),
            ],
          ),
        ],
      ),
    );
  }
}
