import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/components/group_details_menu.dart';

import '../domain/group.dart';

class GroupDetailScreen extends ConsumerWidget {
  static const route = ":id";
  static const name = "GroupDetails";

  final String id;
  final Group? group;

  const GroupDetailScreen(this.id, {this.group, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getGroupByIdProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: Text(state.maybeWhen(data: (data) => data.name, orElse: () => group?.name ?? "")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          GroupDetailsMenu(id),
        ],
      ),
    );
  }
}
