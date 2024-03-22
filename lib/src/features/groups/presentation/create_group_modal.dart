import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/extensions/build_context_extensions.dart';
import 'package:watchable/src/features/groups/application/create_group_controller.dart';

import '../../../constants/app_sizes.dart';

class CreateGroupModal extends ConsumerStatefulWidget {
  const CreateGroupModal({super.key});

  @override
  ConsumerState createState() => _CreateGroupScreenState();

  static show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (_) => const CreateGroupModal(), isScrollControlled: true);
  }
}

class _CreateGroupScreenState extends ConsumerState<CreateGroupModal> {
  final _formKey = GlobalKey<FormBuilderState>();

  _onSubmit() {
    if (_formKey.currentState?.saveAndValidate() == true) {
      final name = _formKey.currentState?.fields["name"]?.value as String;
      final description = _formKey.currentState?.fields["description"]?.value as String?;
      final anyoneCanJoin = _formKey.currentState?.fields["anyoneCanJoin"]?.value as bool;

      ref.read(createGroupControllerProvider.notifier).createGroup(name, description, anyoneCanJoin);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(createGroupControllerProvider, (_, state) {
      if (state.hasValue && state.value != null) {
        context.pop();
      }
    });

    final state = ref.watch(createGroupControllerProvider);

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 500),
        child: Padding(
          padding: modalPadding,
          child: FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(LocaleKeys.groups_create_title.tr(), style: context.textTheme.titleLarge),
                gapH12,
                FormBuilderTextField(
                  name: "name",
                  decoration: InputDecoration(labelText: LocaleKeys.groups_fields_name.tr()),
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(3),
                      FormBuilderValidators.maxLength(100),
                    ],
                  ),
                ),
                FormBuilderTextField(
                  name: "description",
                  decoration: InputDecoration(labelText: LocaleKeys.groups_fields_description.tr()),
                  maxLength: 1024,
                  maxLines: 3,
                  textInputAction: TextInputAction.done,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.maxLength(1024),
                    ],
                  ),
                ),
                FormBuilderSwitch(
                  name: "anyoneCanJoin",
                  initialValue: true,
                  title: Text(LocaleKeys.groups_fields_anyoneCanJoin.tr()),
                ),
                gapH12,
                if (state.hasError)
                  Text(
                    LocaleKeys.errors_couldNotCreateGroup,
                    style: context.textTheme.bodySmall!.copyWith(color: context.colorScheme.error),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: context.pop, child: Text(LocaleKeys.groups_create_abort.tr())),
                    TextButton(onPressed: _onSubmit, child: Text(LocaleKeys.groups_create_save.tr())),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
