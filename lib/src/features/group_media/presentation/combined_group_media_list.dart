import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/sliver_grouped_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/extensions/async_value_extensions.dart';
import 'package:watchable/src/features/group_media/data/group_media_repository.dart';

import '../../common/presentation/spinner.dart';
import 'components/combined_group_media_item.dart';

class CombinedGroupMediaList extends ConsumerWidget {
  const CombinedGroupMediaList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final media = ref.watch(watchGroupMediaProvider);
    final isLoading = media.maybeWhen(data: (_) => false, orElse: () => true);

    ref.listen(watchGroupMediaProvider, (_, state) {
      state.showToastOnError(context);
    });

    if (isLoading) {
      return const SliverFillRemaining(child: Center(child: Spinner()));
    }

    return SliverGroupedListView(
      elements: media.value!,
      groupBy: (element) => DateUtils.dateOnly(element.createdAt),
      groupHeaderBuilder: (element) => Center(
        child: Chip(
          label: Text(
            DateFormat(DateFormat.YEAR_MONTH_DAY, EasyLocalization.of(context)!.currentLocale!.languageCode)
                .format(element.createdAt),
          ),
        ),
      ),
      order: GroupedListOrder.DESC,
      sort: true,
      itemComparator: (a, b) => a.createdAt.compareTo(b.createdAt),
      itemBuilder: (context, element) => CombinedGroupMediaItem(element),
    );
  }
}
