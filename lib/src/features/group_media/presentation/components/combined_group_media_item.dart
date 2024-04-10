import 'package:easy_localization/easy_localization.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/group_media/domain/group_media_type.dart';
import 'package:watchable/src/features/group_media/presentation/components/loading_group_media_item.dart';
import 'package:watchable/src/features/group_media/presentation/components/media_voting_widget.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/group_detail_screen.dart';
import 'package:watchable/src/features/profile/data/profile_repository.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../profile/presentation/components/profile_avatar.dart';
import '../../domain/group_media.dart';

class CombinedGroupMediaItem extends ConsumerWidget {
  final GroupMedia item;

  const CombinedGroupMediaItem(this.item, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getProfileByIdProvider(item.addedBy));
    final media = item.mediaType == GroupMediaType.movie
        ? ref.watch(getMovieByIdProvider(item.tmdbId))
        : ref.watch(getTvByIdProvider(item.tmdbId));

    final isLoading = media.maybeWhen(data: (_) => false, orElse: () => true) ||
        profile.maybeWhen(data: (_) => false, orElse: () => true);

    if (isLoading) return const LoadingMediaItem();

    return InkWell(
      // onTap: onTap,
      // onLongPress: onLongPress,
      child: Container(
        padding: const EdgeInsets.all(Sizes.p8),
        child: SizedBox(
          height: 150,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.p8),
                child: media.value!.backdropPath == null
                    ? null
                    : FancyShimmerImage(
                        imageUrl: "https://image.tmdb.org/t/p/w92${media.value!.posterPath}", height: 150, width: 100),
              ),
              gapW8,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(child: Text(media.value!.title, maxLines: 1, overflow: TextOverflow.ellipsis)),
                        gapW4,
                        ElTooltip(
                          color: context.theme.dialogBackgroundColor,
                          content: Text(LocaleKeys.groupMedia_addedBy.tr(args: [profile.value!.username])),
                          child: ProfileAvatar(AsyncData(profile.value!), size: 12),
                        ),
                      ],
                    ),
                    // Text(item.media.title, overflow: TextOverflow.ellipsis),
                    Text(media.value!.releaseDate.year.toString(),
                        style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
                    gapH8,
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
                        MediaVotingWidget(onVote: (_) {}),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
