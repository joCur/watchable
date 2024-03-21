import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/common/presentation/spinner.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/components/group_item.dart';

import '../../../constants/app_sizes.dart';
import 'create_group_modal.dart';

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
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => CreateGroupModal.show(context),
          )
        ],
      ),
      body: Padding(
        padding: screenPadding,
        child: state.when(
          data: (groups) => ListView.builder(itemCount: groups.length, itemBuilder: (context, index) => GroupItem(groups[index])),
          error: (error, stackTrace) => Center(child: Text(error.toString())),
          loading: () => const Center(child: Spinner()),
        ),
      ),
    );
  }
}
