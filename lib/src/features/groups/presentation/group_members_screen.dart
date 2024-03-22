import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/groups/presentation/components/user_join_request_widget.dart';

import '../data/join_request_repository.dart';

class GroupMembersScreen extends ConsumerWidget {
  static const String route = ':id/members';
  static const String name = 'GroupMembers';

  final String id;

  const GroupMembersScreen(this.id, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final joinRequests = ref.watch(listJoinRequestsByGroupIdProvider(id));
    final data = joinRequests.maybeWhen(data: (data) => data, orElse: () => []);

    return Scaffold(
      appBar: AppBar(title: Text(LocaleKeys.groups_members.tr())),
      body: CustomScrollView(
        slivers: [
          SliverList.separated(
            itemCount: data.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) => UserJoinRequestWidget(data[index]),
          ),
        ],
      ),
    );
  }
}
