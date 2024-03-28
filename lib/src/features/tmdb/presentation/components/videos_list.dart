import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/tmdb/domain/videos.dart';

import '../../../../constants/app_sizes.dart';
import '../../../common/presentation/spinner.dart';
import 'video_item.dart';

class VideosList extends StatelessWidget {
  final AsyncValue<Videos> videos;

  const VideosList(this.videos, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p8),
      sliver: videos.when(
        loading: () => const Center(child: Spinner()),
        error: (error, stacktrace) => Center(child: Text(LocaleKeys.discover_loadingVideosFailed.tr())),
        data: (data) => SliverList.builder(
          itemCount: videos.value!.results.length,
          itemBuilder: (context, index) => VideoItem(videos.value!.results[index]),
        ),
      ),
    );
  }
}
