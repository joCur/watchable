import 'package:easy_localization/easy_localization.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/common/presentation/image_list_tile.dart';
import 'package:watchable/src/features/tmdb/presentation/components/poster_image.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/locale_keys.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../groups/data/group_repository.dart';
import '../../../groups/presentation/group_detail_screen.dart';
import '../../../profile/data/profile_repository.dart';
import '../../../profile/presentation/components/profile_avatar.dart';
import '../../../tmdb/data/tmdb_repository.dart';
import '../../domain/group_media.dart';
import '../../domain/group_media_type.dart';
import '../group_media_details_screen.dart';
import 'loading_group_media_item.dart';

class GroupMediaItem extends ConsumerWidget {
  final GroupMedia item;
  final bool showGroup;

  const GroupMediaItem(this.item, {this.showGroup = false, super.key});

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
      title: Text(media.value!.title, overflow: TextOverflow.ellipsis),
      onTap: () => context.pushNamed(GroupMediaDetailScreen.name, pathParameters: {'id': item.groupId, 'media_id': item.id}),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (media.value!.releaseDate != null)
            Text(media.value!.releaseDate!.year.toString(), style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (profile?.valueOrNull != null)
                ElTooltip(
                  color: context.theme.dialogBackgroundColor,
                  content: Text(LocaleKeys.groupMedia_addedBy.tr(args: [profile!.value!.username])),
                  child: ProfileAvatar(profile, size: 12),
                ),
              gapW8,
              if (showGroup)
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
              // MediaReactionWidget(item.id),
            ],
          ),
          // if (!showGroup)
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     const Spacer(),
          //     MediaReactionWidget(item.id),
          //   ],
          // )
        ],
      ),
    );
  }
}
