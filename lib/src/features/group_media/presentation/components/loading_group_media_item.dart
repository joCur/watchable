import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_avatar.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_colors.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_text.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../extensions/build_context_extensions.dart';

class LoadingMediaItem extends ConsumerWidget {
  const LoadingMediaItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p8),
      child: SizedBox(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Sizes.p8),
              child: Shimmer.fromColors(
                baseColor: ShimmerColors.defaultShimmerBaseColor,
                highlightColor: ShimmerColors.defaultShimmerHighlightColor,
                child: Container(color: ShimmerColors.defaultShimmerBackColor, height: 150, width: 100),
              ),
            ),
            gapW8,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ShimmerText(width: context.mediaQuery.size.width * .5),
                      const Spacer(),
                      const ShimmerAvatar(size: 12),
                    ],
                  ),
                  // Text(item.media.title, overflow: TextOverflow.ellipsis),
                  gapH4,
                  ShimmerText(width: 50, height: context.textTheme.bodySmall!.fontSize),
                  gapH12,
                  ShimmerText(width: double.infinity, height: context.textTheme.bodySmall!.fontSize),
                  gapH4,
                  ShimmerText(width: double.infinity, height: context.textTheme.bodySmall!.fontSize),
                  gapH4,
                  ShimmerText(width: context.mediaQuery.size.width * .7, height: context.textTheme.bodySmall!.fontSize),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
