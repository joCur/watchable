import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/groups/domain/group_member.dart';
import 'package:watchable/src/features/profile/presentation/components/profile_avatar.dart';

import '../../../profile/data/profile_repository.dart';

class GroupMemberWidget extends ConsumerWidget {
  final GroupMember item;

  const GroupMemberWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getProfileByIdProvider(item.userId));
    final memberSince = DateFormat.yMMMd().format(item.createdAt);

    return ListTile(
      leading: ProfileAvatar(profile),
      title: profile.maybeWhen(data: (data) => Text(data.username), orElse: () => const Text('')),
      subtitle: Text(LocaleKeys.groups_memberSince.tr(args: [memberSince])),
    );
  }
}
