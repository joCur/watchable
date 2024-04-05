import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/groups/presentation/create_group_modal.dart';
import 'package:watchable/src/features/groups/presentation/join_group_modal.dart';

import '../../../constants/app_sizes.dart';

class JoinOrCreateGroupModal extends StatelessWidget {
  const JoinOrCreateGroupModal({super.key});

  static show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (_) => const JoinOrCreateGroupModal(), isScrollControlled: true);
  }

  _createGroup(BuildContext context) {
    context.pop();
    CreateGroupModal.show(context);
  }

  _joinGroup(BuildContext context) {
    context.pop();
    JoinGroupModal.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 300),
        child: Padding(
          padding: modalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(LocaleKeys.groups_dialog_createOrJoinTitle.tr(), style: context.textTheme.titleLarge),
              gapH16,
              ElevatedButton(onPressed: () => _createGroup(context), child: Text(LocaleKeys.groups_dialog_createTitle.tr())),
              gapH12,
              ElevatedButton(onPressed: () => _joinGroup(context), child: Text(LocaleKeys.groups_dialog_joinTitle.tr())),
            ],
          ),
        ),
      ),
    );
  }
}
