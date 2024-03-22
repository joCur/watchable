import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/groups/data/join_request_repository.dart';
import '../../../../constants/locale_keys.dart';
import '../group_members_screen.dart';
import 'package:badges/badges.dart' as badges;

import '../../../../extensions/build_context_extensions.dart';

class GroupDetailsMenu extends ConsumerWidget {
  final String id;

  const GroupDetailsMenu(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joinRequests = ref.watch(listJoinRequestsByGroupIdProvider(id));
    final int pendingRequests = joinRequests.maybeWhen(data: (data) => data.length, orElse: () => 0);

    return PopupMenuButton<Function>(
      onSelected: (action) => action(),
      position: PopupMenuPosition.under,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: () => context.pushNamed(GroupMembersScreen.name, pathParameters: {'id': id}),
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
