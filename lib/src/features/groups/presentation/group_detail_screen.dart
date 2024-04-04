import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/group_media/presentation/group_media_list.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/components/group_details_menu.dart';

class GroupDetailScreen extends ConsumerWidget {
  static const route = ":id";
  static const name = "GroupDetails";

  final String id;

  const GroupDetailScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final group = ref.watch(getCurrentUserGroupByIdProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: Text(group.name),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          GroupDetailsMenu(group),
        ],
      ),
      body: GroupMediaList(id),
    );
  }
}
