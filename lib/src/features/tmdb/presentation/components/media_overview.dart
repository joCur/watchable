import 'package:flutter/material.dart';

import '../../../../constants/app_sizes.dart';
import '../../domain/media.dart';

class MediaOverview extends StatelessWidget {
  final Media media;

  const MediaOverview(this.media, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
      sliver: SliverToBoxAdapter(child: Text(media.overview)),
    );
  }
}
