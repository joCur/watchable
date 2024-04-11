import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/groups/data/group_member_repository.dart';
import 'package:watchable/src/features/groups/presentation/components/group_member_widget.dart';

import '../../../constants/app_sizes.dart';

class GroupMembersScreen extends ConsumerWidget {
  static const String route = 'members';
  static const String name = 'GroupMembers';

  final String id;

  const GroupMembersScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groupMemberState = ref.watch(listGroupMembersByGroupIdProvider(id));
    final groupMembers = groupMemberState.maybeWhen(data: (data) => data, orElse: () => []);

    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.groups_members.tr())),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(pinned: true, automaticallyImplyLeading: false, title: Text(LocaleKeys.groups_members.tr())),
          SliverList.separated(
            itemCount: groupMembers.length,
            separatorBuilder: (context, index) => divider,
            itemBuilder: (context, index) => GroupMemberWidget(groupMembers[index]),
          )
        ],
      ),
    );
  }
}
