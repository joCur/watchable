import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/groups/application/join_group_controller.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/components/joinable_group_item.dart';

import '../../../constants/app_sizes.dart';

class JoinGroupModal extends ConsumerWidget {
  const JoinGroupModal({super.key});

  static show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (_) => const JoinGroupModal(), isScrollControlled: true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listOtherGroupsForCurrentUserProvider);

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 300),
        child: Padding(
          padding: modalPadding,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text("Join a group", style: context.textTheme.titleLarge),
                floating: true,
                snap: true,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                ],
              ),
              state.when(
                data: (data) => SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => JoinableGroupItem(data[index]),
                    childCount: data.length,
                  ),
                ),
                error: (error, stackTrace) => SliverToBoxAdapter(child: Text(error.toString())),
                loading: () => const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
