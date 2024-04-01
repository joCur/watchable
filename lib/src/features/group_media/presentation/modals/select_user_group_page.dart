import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/group_media/data/group_media_repository.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../../../../constants/app_sizes.dart';
import '../../../../extensions/build_context_extensions.dart';
import '../../../common/presentation/spinner.dart';
import '../../../groups/data/group_repository.dart';
import '../../application/create_media_controller.dart';
import '../../application/group_multi_select_controller.dart';
import '../../application/multi_create_media_controller.dart';
import '../../domain/group_media_type.dart';

class SelectUserGroupPageBuilder {
  static SliverWoltModalSheetPage build(BuildContext context, int tmdbId, GroupMediaType type) {
    return SliverWoltModalSheetPage(
      isTopBarLayerAlwaysVisible: true,
      topBar: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(groupMultiSelectControllerProvider);
          return Padding(
            padding: const EdgeInsets.only(top: Sizes.p4),
            child: AppBar(
              title: Text.rich(
                TextSpan(
                  text: LocaleKeys.groupMedia_modalTitle.tr(),
                  style: context.textTheme.titleLarge,
                  children: [
                    const TextSpan(text: "\n"),
                    TextSpan(text: LocaleKeys.groupMedia_modalDescription.tr(), style: context.textTheme.bodySmall),
                  ],
                ),
              ),
              automaticallyImplyLeading: false,
              actions: [
                if (state.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () => ref.read(multiCreateMediaControllerProvider.notifier).create(tmdbId, type),
                  ),
              ],
            ),
          );
        },
      ),
      mainContentSlivers: [
        Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(listGroupsWithMediaStateProvider(tmdbId));
            final isLoading = state.maybeWhen(data: (_) => false, orElse: () => true);
            final selections = ref.watch(groupMultiSelectControllerProvider);

            ref.listen(listCurrentUserGroupsProvider, (_, next) {
              next.showToastOnError(context);
            });

            ref.listen(createMediaControllerProvider, (_, next) {
              next.showToastOnError(context, shouldPop: true);
              next.showToastOnSuccess(context, message: LocaleKeys.groupMedia_addedSuccessfully.tr(), shouldPop: true);
            });

            if (isLoading) {
              return const SliverToBoxAdapter(child: SizedBox(height: 100, child: Center(child: Spinner())));
            }

            return SliverList.builder(
              itemCount: state.value!.length,
              itemBuilder: (context, index) {
                final group = state.value![index].item1;
                final hasMedia = state.value![index].item2;

                final onTap = hasMedia
                    ? null
                    : selections.isEmpty
                        ? () => ref.read(createMediaControllerProvider.notifier).create(group.id, tmdbId, type)
                        : () => ref.read(groupMultiSelectControllerProvider.notifier).toggleSelection(group.id);

                final onLongPress = hasMedia ? null : () => ref.read(groupMultiSelectControllerProvider.notifier).toggleSelection(group.id);

                return ListTile(
                  onTap: onTap,
                  enabled: !hasMedia,
                  onLongPress: onLongPress,
                  selected: selections.contains(group.id),
                  selectedTileColor: context.theme.primaryColor.withOpacity(0.1),
                  title: Text(group.name),
                  subtitle: group.description != null ? Text(group.description!) : null,
                  trailing: hasMedia ? const Icon(Icons.check) : const Icon(Icons.add_box_outlined),
                );
              },
            );
          },
        ),
        const SliverPadding(padding: EdgeInsets.all(Sizes.p16)),
      ],
    );
  }
}
