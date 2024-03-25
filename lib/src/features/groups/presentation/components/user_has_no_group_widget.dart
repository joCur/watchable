import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/groups/presentation/create_group_modal.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../constants/locale_keys.dart';

class UserHasNoGroupWidget extends StatelessWidget {
  const UserHasNoGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: cardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              LocaleKeys.groups_notInAGroup_title.tr(),
              textAlign: TextAlign.center,
              style: context.textTheme.titleLarge,
            ),
            gapH12,
            Text(LocaleKeys.groups_notInAGroup_description.tr(), textAlign: TextAlign.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () => CreateGroupModal.show(context), child: Text(LocaleKeys.groups_create_button.tr())),
                TextButton(onPressed: () {}, child: Text(LocaleKeys.groups_join_button.tr())),
              ],
            )
          ],
        ),
      ),
    );
  }
}
