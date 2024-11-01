import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:watchable/src/features/group_media/presentation/group_media_details_screen.dart';
import 'package:watchable/src/features/group_media/presentation/group_media_list.dart';
import 'package:watchable/src/features/groups/data/group_repository.dart';
import 'package:watchable/src/features/groups/presentation/components/group_details_menu.dart';

import '../../group_media/data/group_media_repository.dart';
import '../../group_media/domain/group_media.dart';

class GroupDetailScreen extends ConsumerWidget {
  static const route = ":id";
  static const name = "GroupDetails";

  final String id;

  const GroupDetailScreen(this.id, {super.key});

  void showRandomMedia(BuildContext context, List<GroupMedia> items) {
    final item = items[Random().nextInt(items.length)];

    if (!context.mounted) return;
    context.pushNamed(GroupMediaDetailScreen.name, pathParameters: {'id': id, 'media_id': item.id});
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final group = ref.watch(getCurrentUserGroupByIdProvider(id));
    final mediaItems = ref.watch(watchGroupMediaByGroupIdProvider(id));
    final isLoading = mediaItems.maybeWhen(data: (_) => false, orElse: () => true);

    return Scaffold(
      appBar: AppBar(
        title: Text(group.name),
        actions: [
          // IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: isLoading ? null : () => showRandomMedia(context, mediaItems.value!),
            icon: const FaIcon(FontAwesomeIcons.dice),
          ),
          GroupDetailsMenu(group),
        ],
      ),
      body: GroupMediaList(id),
    );
  }
}
