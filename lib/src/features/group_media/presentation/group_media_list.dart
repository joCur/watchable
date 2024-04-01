import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';

import '../../common/presentation/spinner.dart';
import '../data/group_media_repository.dart';

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

    if (isLoading) {
      return const Center(child: Spinner());
    }

    return ListView.builder(
      itemCount: media.value!.length,
      itemBuilder: (context, index) {
        final data = media.value![index];
        return ListTile(
          title: Text(data.tmdbId.toString()),
          subtitle: Text(data.mediaType.toString()),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => ref.read(groupMediaRepositoryProvider).deleteAsync(data.id),
          ),
        );
      },
    );
  }
}
