import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:watchable/src/features/groups/domain/group.dart';

import '../group_detail_screen.dart';

class GroupItem extends StatelessWidget {
  final Group item;

  const GroupItem(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.pushNamed(GroupDetailScreen.name, pathParameters: {'id': item.id}, extra: item),
      title: Text(item.name),
      subtitle: item.description != null ? Text(item.description!) : null,
    );
  }
}
