import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/common/presentation/image_list_tile.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_avatar.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_text.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../tmdb/presentation/components/shimmer_poster_image.dart';

class LoadingMediaItem extends ConsumerWidget {
  const LoadingMediaItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ImageListTile(
      leading: const ShimmerPosterImage(),
      title: Row(
        children: [
          ShimmerText(width: context.mediaQuery.size.width * .5),
          const Spacer(),
          const ShimmerAvatar(size: 12),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerText(width: 50, height: context.textTheme.bodySmall!.fontSize),
          gapH12,
          ShimmerText(width: double.infinity, height: context.textTheme.bodySmall!.fontSize),
          gapH4,
          ShimmerText(width: double.infinity, height: context.textTheme.bodySmall!.fontSize),
          gapH4,
          ShimmerText(width: context.mediaQuery.size.width * .7, height: context.textTheme.bodySmall!.fontSize),
        ],
      ),
    );
  }
}
