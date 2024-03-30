import 'dart:core';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../constants/app_sizes.dart';
import '../../../extensions/build_context_extensions.dart';
import '../../common/presentation/spinner.dart';
import '../data/tmdb_repository.dart';
import '../domain/person_preview.dart';
import '../presentation/components/media_list_item.dart';
import 'search_controller.dart';

class TmdbSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      // IconButton(icon: const Icon(Icons.clear), onPressed: () => query = ''),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => close(context, null));
  }

  // @override
  // PreferredSizeWidget buildBottom(BuildContext context) {
  //   return PreferredSize(
  //     preferredSize: const Size.fromHeight(40),
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
  //       child: Row(children: [Text("Search", style: context.textTheme.titleLarge)]),
  //     ),
  //   );
  // }

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
                Text('Find what to watch next', style: context.textTheme.titleLarge),
                gapH4,
                Text('Search for ${searchType.name} and add it to your group!', style: context.textTheme.bodySmall),
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

              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.search, size: 100),
                    gapH16,
                    Text('Search for ${searchType.name}', style: context.textTheme.titleLarge),
                    gapH4,
                    Text('Results for $query', style: context.textTheme.bodySmall),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
