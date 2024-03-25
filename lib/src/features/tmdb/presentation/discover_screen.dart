import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/tmdb/presentation/components/tab_chip.dart';
import 'package:watchable/src/features/tmdb/presentation/discover_all_tab.dart';
import 'package:watchable/src/features/tmdb/presentation/discover_movies_tab.dart';
import 'package:watchable/src/features/tmdb/presentation/discover_tv_tab.dart';

import '../../../constants/app_sizes.dart';

class DiscoverScreen extends HookConsumerWidget {
  static const String route = '/discover';
  static const String name = 'Discover';

  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const content = [
      DiscoverAllTab(),
      DiscoverMoviesTab(),
      DiscoverTvTab(),
    ];

    final index = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: Wrap(
          spacing: Sizes.p8,
          children: [
            TabChip(index: 0, value: index.value, action: () => index.value = 0, content: LocaleKeys.discover_all.tr()),
            TabChip(index: 1, value: index.value, action: () => index.value = 1, content: LocaleKeys.discover_movies.tr()),
            TabChip(index: 2, value: index.value, action: () => index.value = 2, content: LocaleKeys.discover_tv.tr()),
          ],
        ),
      ),
      body: content[index.value],
    );
  }
}
