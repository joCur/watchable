import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/common/presentation/shimmer/shimmer_text.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/domain/group.dart';

import '../../../constants/app_sizes.dart';

class GroupEditScreen extends ConsumerWidget {
  static const route = 'edit';
  static const name = 'GroupEdit';

  final String id;
  final Group? group;

  const GroupEditScreen(this.id, {this.group, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getGroupByIdProvider(id));
    final group = state.maybeWhen(data: (group) => group, orElse: () => this.group);
    final isLoading = state.maybeWhen(data: (_) => false, orElse: () => true);

    ref.listen(getGroupByIdProvider(id), (_, item) => item.showToastOnError(context));

    return Scaffold(
      appBar: AppBar(
        title: isLoading || group == null ? const ShimmerText(width: 100) : Text(group.name),
        actions: [
          if (!isLoading && group != null)
            IconButton(
              onPressed: () {},
              icon: group.anyoneCanJoin ? const Icon(Icons.lock_open) : const Icon(Icons.lock),
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Sizes.p8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const GroupEditForm(),
            // gapH16,
            // const GroupMediaList(),
          ],
        ),
      ),
    );
  }
}
