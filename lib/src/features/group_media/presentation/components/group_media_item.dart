import 'package:easy_localization/easy_localization.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../profile/presentation/components/profile_avatar.dart';
import '../../domain/group_media.dart';

class GroupMediaItem extends ConsumerWidget {
  final GroupMedia item;

  const GroupMediaItem(this.item, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                child: item.media.backdropPath == null
                    ? null
                    : FancyShimmerImage(imageUrl: "https://image.tmdb.org/t/p/w92${item.media.posterPath}", height: 150, width: 100),
              ),
              gapW8,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.media.title, overflow: TextOverflow.ellipsis),
                    gapH4,
                    Text(item.media.releaseDate.year.toString(), style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
                    gapH12,
                    Text(
                      item.media.overview,
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall!.copyWith(color: Colors.grey),
                    ),
                    const Spacer(),
                    ElTooltip(
                      content: Text(LocaleKeys.groupMedia_addedBy.tr(args: [item.profile.username])),
                      child: ProfileAvatar(AsyncData(item.profile), size: 12),
                    ),
                    gapH4,
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
