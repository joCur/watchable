import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/groups/application/update_group_controller.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';

import '../../../constants/app_sizes.dart';

class GroupEditScreen extends ConsumerWidget {
  static const route = 'edit';
  static const name = 'GroupEdit';

  final String id;
  const GroupEditScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final group = ref.watch(getCurrentUserGroupByIdProvider(id));

    ref.listen(getGroupByIdProvider(id), (_, item) => item.showToastOnError(context));
    ref.listen(updateGroupControllerProvider, (_, item) => item.showToastOnError(context));

    return Scaffold(
      appBar: AppBar(
        title: Text(group.name),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(updateGroupControllerProvider.notifier).updateGroup(group.copyWith(anyoneCanJoin: !group.anyoneCanJoin));
            },
            icon: group.anyoneCanJoin ? const Icon(Icons.lock_open) : const Icon(Icons.lock),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Sizes.p8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(group.description ?? '')],
        ),
      ),
    );
  }
}
