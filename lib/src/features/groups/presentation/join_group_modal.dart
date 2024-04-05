import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
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
                actions: const [
                  // IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                ],
              ),
              state.when(
                data: (data) => data.isEmpty
                    ? SliverToBoxAdapter(
                        child: SizedBox(
                          height: 100,
                          child: Center(child: Text(LocaleKeys.groups_noGroupsFound.tr(), style: context.textTheme.bodyLarge)),
                        ),
                      )
                    : SliverList(
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
