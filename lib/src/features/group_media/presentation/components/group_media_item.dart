import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/common/presentation/image_list_tile.dart';
import 'package:watchable/src/features/group_media/presentation/components/media_reaction_widget.dart';
import 'package:watchable/src/features/group_media/presentation/components/title_with_creator.dart';
import 'package:watchable/src/features/tmdb/presentation/components/poster_image.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../profile/data/profile_repository.dart';
import '../../../tmdb/data/tmdb_repository.dart';
import '../../domain/group_media.dart';
import '../../domain/group_media_type.dart';
import 'loading_group_media_item.dart';

class GroupMediaItem extends ConsumerWidget {
  final GroupMedia item;

  const GroupMediaItem(this.item, {super.key});

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Spacer(),
              MediaReactionWidget(item.id),
            ],
          )
        ],
      ),
    );
  }
}
