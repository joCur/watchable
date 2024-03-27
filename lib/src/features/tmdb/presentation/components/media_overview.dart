import 'package:flutter/material.dart';
import 'package:watchable/src/features/tmdb/domain/media_details.dart';

import '../../../../constants/app_sizes.dart';

class MediaOverview extends StatelessWidget {
  final MediaDetails media;

  const MediaOverview(this.media, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      sliver: SliverToBoxAdapter(child: Text(media.overview)),
    );
  }
}
