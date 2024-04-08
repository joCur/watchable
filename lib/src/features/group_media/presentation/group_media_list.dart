import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';

import '../../common/presentation/shimmer/shimmer_list.dart';
import '../data/group_media_repository.dart';
import 'components/group_media_item.dart';
import 'components/loading_group_media_item.dart';

class GroupMediaList extends ConsumerWidget {
  final String groupId;

  const GroupMediaList(this.groupId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final media = ref.watch(watchGroupMediaByGroupIdProvider(groupId));
    final isLoading = media.maybeWhen(data: (_) => false, orElse: () => true);

    ref.listen(watchGroupMediaByGroupIdProvider(groupId), (_, state) {
      if (state.hasError) {
        state.showToastOnError(context);
      }
    });

    if (isLoading) return const ShimmerList(item: LoadingMediaItem());

    return ListView.builder(
        itemCount: media.value!.length, itemBuilder: (context, index) => GroupMediaItem(media.value![index]));
  }
}
