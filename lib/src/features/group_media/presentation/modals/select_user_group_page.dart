import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

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
          return AppBar(
            centerTitle: true,
            title: Text("Select group", style: context.textTheme.titleLarge),
            automaticallyImplyLeading: false,
            actions: [
              if (state.isNotEmpty)
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => ref.read(multiCreateMediaControllerProvider.notifier).create(tmdbId, type),
                ),
            ],
          );
        },
      ),
      mainContentSlivers: [
        Consumer(
          builder: (context, ref, child) {
            final state = ref.watch(listCurrentUserGroupsProvider);
            final isLoading = state.maybeWhen(data: (_) => false, orElse: () => true);
            final selections = ref.watch(groupMultiSelectControllerProvider);

            ref.listen(listCurrentUserGroupsProvider, (_, next) {
              next.showToastOnError(context);
            });

            ref.listen(createMediaControllerProvider, (_, next) {
              next.showToastOnError(context, shouldPop: true);
              next.showToastOnSuccess(context, message: "Added successfully", shouldPop: true);
            });

            if (isLoading) {
              return const SliverToBoxAdapter(child: Center(child: Spinner()));
            }

            return SliverList.builder(
              itemCount: state.value!.length,
              itemBuilder: (context, index) => ListTile(
                onTap: selections.isEmpty
                    ? () => ref.read(createMediaControllerProvider.notifier).create(state.value![index].id, tmdbId, type)
                    : () => ref.read(groupMultiSelectControllerProvider.notifier).toggleSelection(state.value![index].id),
                onLongPress: () => ref.read(groupMultiSelectControllerProvider.notifier).toggleSelection(state.value![index].id),
                selected: selections.contains(state.value![index].id),
                title: Text(state.value![index].name),
                subtitle: state.value![index].description != null ? Text(state.value![index].description!) : null,
              ),
            );
          },
        )
      ],
    );
  }
}
