import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/common/presentation/spinner.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/components/group_item.dart';
import 'package:watchable/src/features/groups/presentation/join_or_create_group_modal.dart';

import '../../../constants/app_sizes.dart';

class GroupListScreen extends ConsumerWidget {
  static const route = "/groups";
  static const name = "GroupList";

  const GroupListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listCurrentUserGroupsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.groups_title.tr()),
        actions: [
          // IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => JoinOrCreateGroupModal.show(context),
          )
        ],
      ),
      body: Padding(
        padding: screenPadding,
        child: state.when(
          data: (groups) => ListView.separated(
            separatorBuilder: (context, index) => const Divider(indent: Sizes.p16, endIndent: Sizes.p16),
            itemCount: groups.length,
            itemBuilder: (context, index) => GroupItem(groups[index]),
          ),
          error: (error, stackTrace) => Center(child: Text(error.toString())),
          loading: () => const Center(child: Spinner()),
        ),
      ),
    );
  }
}
