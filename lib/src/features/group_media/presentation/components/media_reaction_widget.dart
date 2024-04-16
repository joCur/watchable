import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/group_media_repository.dart';

class MediaReactionWidget extends ConsumerWidget {
  final String mediaId;

  const MediaReactionWidget(this.mediaId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reactions = ref.watch(watchReactionsByMediaIdProvider(mediaId));

    return Container();
  }
}
