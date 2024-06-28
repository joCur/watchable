import 'package:flutter/material.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';

import '../../../../constants/app_sizes.dart';
import '../../../common/presentation/shimmer/shimmer_text.dart';
import '../../domain/media.dart';

class MediaOverview extends StatelessWidget {
  final Media? media;

  const MediaOverview(this.media, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      sliver: SliverToBoxAdapter(
        child: media == null
            ? ShimmerText(width: double.infinity, height: context.textTheme.bodyMedium!.fontSize! * 6)
            : Text(media!.overview),
      ),
    );
  }
}
