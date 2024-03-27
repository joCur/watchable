import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:watchable/src/constants/app_sizes.dart';
import 'package:watchable/src/features/tmdb/data/tmdb_repository.dart';
import 'package:watchable/src/features/tmdb/presentation/components/media_preview_item.dart';

import '../domain/media_preview.dart';
import '../domain/person_preview.dart';

class DiscoverAllTab extends ConsumerStatefulWidget {
  const DiscoverAllTab({super.key});

  @override
  ConsumerState createState() => _DiscoverAllTabState();
}

class _DiscoverAllTabState extends ConsumerState<DiscoverAllTab> {
  final PagingController<int, MediaPreview> _pagingController = PagingController(firstPageKey: 1);
  final _scrollController = ScrollController();

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) => _fetchPage(pageKey));
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final data = await ref.read(getTrendingProvider(TimeWindow.week, pageKey).future);
      final isLastPage = data.page == data.totalPages;
      final results = data.results.where((element) => element is! PersonPreview).toList();

      if (isLastPage) {
        _pagingController.appendLastPage(results);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(results, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryScrollController(
      controller: _scrollController,
      child: CupertinoScrollbar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                title: Text('Trending'),
              ),
              PagedSliverGrid<int, MediaPreview>(
                pagingController: _pagingController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: Sizes.p12,
                  crossAxisSpacing: Sizes.p8,
                  childAspectRatio: 2 / 3,
                ),
                builderDelegate: PagedChildBuilderDelegate<MediaPreview>(
                  itemBuilder: (context, item, index) => MediaPreviewItem(item),
                ),
              ),
              const SliverPadding(padding: screenPadding)
            ],
          ),
        ),
      ),
    );
  }
}
