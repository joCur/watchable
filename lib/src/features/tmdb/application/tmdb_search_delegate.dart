import 'dart:core';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/constants/locale_keys.dart';
import 'package:watchable/src/features/tmdb/extensions/media_type_extensions.dart';

import '../../../constants/app_sizes.dart';
import '../../../extensions/build_context_extensions.dart';
import '../../common/presentation/spinner.dart';
import '../data/tmdb_repository.dart';
import '../domain/media_preview.dart';
import '../presentation/components/media_list_item.dart';
import 'search_controller.dart';

class TmdbSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final searchType = ref.watch(searchControllerProvider);
        if (query.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.search, size: 100),
                gapH16,
                Text(LocaleKeys.discover_search_title.tr(), style: context.textTheme.titleLarge),
                gapH4,
                Text(LocaleKeys.discover_search_subtitle.tr(args: [searchType.translation]), style: context.textTheme.bodySmall),
              ],
            ),
          );
        } else {
          return FutureBuilder(
            future: ref.watch(queryMediaProvider(query, 1).future),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: Spinner());
              }

              if (snapshot.hasError) return const Center(child: Text('Error'));

              final items = snapshot.data!.results.where((element) => element is! PersonPreview).toList();
              return ListView.separated(
                itemCount: items.length,
                separatorBuilder: (context, index) => divider,
                itemBuilder: (context, index) => MediaListItem(items[index]),
              );
            },
          );
        }
      },
    );
  }
}
