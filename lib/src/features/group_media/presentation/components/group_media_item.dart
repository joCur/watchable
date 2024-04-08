import 'package:easy_localization/easy_localization.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../profile/data/profile_repository.dart';
import '../../../profile/presentation/components/profile_avatar.dart';
import '../../../tmdb/data/tmdb_repository.dart';
import '../../domain/group_media.dart';
import '../../domain/group_media_type.dart';
import 'loading_group_media_item.dart';

class GroupMediaItem extends ConsumerWidget {
  final GroupMedia item;

  const GroupMediaItem(this.item, {super.key});

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
                      children: [
                        Expanded(child: Text(media.value!.title, overflow: TextOverflow.ellipsis)),
                        gapW4,
                        ElTooltip(
                          color: context.theme.dialogBackgroundColor,
                          content: Text(LocaleKeys.groupMedia_addedBy.tr(args: [profile.value!.username])),
                          child: ProfileAvatar(AsyncData(profile.value!), size: 12),
                        ),
                      ],
                    ),
                    // Text(item.media.title, overflow: TextOverflow.ellipsis),
                    gapH4,
                    Text(media.value!.releaseDate.year.toString(),
                        style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
                    gapH12,
                    Text(
                      media.value!.overview,
                      maxLines: 3,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),
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
