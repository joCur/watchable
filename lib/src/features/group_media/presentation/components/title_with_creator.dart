import 'package:easy_localization/easy_localization.dart';
import 'package:el_tooltip/el_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/locale_keys.dart';
import '../../../profile/domain/profile.dart';
import '../../../profile/presentation/components/profile_avatar.dart';

class TitleWithCreator extends StatelessWidget {
  final Profile creator;
  final String title;

  const TitleWithCreator({required this.title, required this.creator, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: Text(title, overflow: TextOverflow.ellipsis)),
        gapW4,
        ElTooltip(
          color: context.theme.dialogBackgroundColor,
          content: Text(LocaleKeys.groupMedia_addedBy.tr(args: [creator.username])),
          child: ProfileAvatar(AsyncData(creator), size: 12),
        ),
      ],
    );
  }
}
