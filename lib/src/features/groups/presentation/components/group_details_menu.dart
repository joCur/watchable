import 'package:badges/badges.dart' as badges;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/groups/data/join_request_repository.dart';
import 'package:watchable/src/features/groups/presentation/group_edit_screen.dart';

import '../../../../constants/locale_keys.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../domain/group.dart';
import '../group_members_screen.dart';

class GroupDetailsMenu extends ConsumerWidget {
  final Group group;

  const GroupDetailsMenu(this.group, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joinRequests = ref.watch(listJoinRequestsByGroupIdProvider(group.id));
    final int pendingRequests = joinRequests.maybeWhen(data: (data) => data.length, orElse: () => 0);

    return PopupMenuButton<Function>(
      onSelected: (action) => action(),
      position: PopupMenuPosition.under,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: () => context.pushNamed(GroupEditScreen.name, pathParameters: {'id': group.id}, extra: group),
          child: ListTile(
            title: Text(LocaleKeys.groups_edit.tr(), style: context.textTheme.bodyLarge),
            leading: const Icon(Icons.edit),
          ),
        ),
        PopupMenuItem(
          value: () => context.pushNamed(GroupMembersScreen.name, pathParameters: {'id': group.id}),
          child: ListTile(
            title: Text(LocaleKeys.groups_members.tr(), style: context.textTheme.bodyLarge),
            leading: badges.Badge(
              position: badges.BadgePosition.topEnd(top: -14, end: -12),
              // showBadge: pendingRequests > 0,
              badgeStyle: badges.BadgeStyle(badgeColor: context.colorScheme.primary),
              badgeContent: Text(
                "$pendingRequests",
                style: context.textTheme.bodySmall!.copyWith(color: context.colorScheme.onPrimary),
              ),
              child: const Icon(Icons.people),
            ),
          ),
        ),
      ],
    );
  }
}
