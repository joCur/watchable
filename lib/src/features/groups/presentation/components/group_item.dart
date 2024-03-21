import 'package:flutter/material.dart';
import 'package:watchable/src/features/groups/domain/group.dart';

class GroupItem extends StatelessWidget {
  final Group item;

  const GroupItem(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.name),
      subtitle: item.description != null ? Text(item.description!) : null,
    );
  }
}
