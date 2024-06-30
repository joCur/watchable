import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/locale_keys.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../groups/domain/group.dart';
import '../../../profile/domain/profile.dart';

class GroupMediaTagline extends StatelessWidget {
  final AsyncValue<Profile> creator;
  final AsyncValue<Group> group;

  const GroupMediaTagline({required this.creator, required this.group, super.key});

  Widget _buildItem(BuildContext context, IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: Sizes.p16, color: Colors.grey),
        gapW4,
        Text(text, style: context.textTheme.bodySmall!.copyWith(color: Colors.grey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildItem(context, Icons.person, LocaleKeys.groupMedia_addedBy.tr(args: [creator.valueOrNull?.username ?? ""])),
        if (group.hasValue) gapW8,
        if (group.hasValue) _buildItem(context, Icons.group, group.value!.name),
      ],
    );
  }
}
