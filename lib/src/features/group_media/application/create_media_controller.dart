import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:watchable/src/features/group_media/domain/group_media.dart';

import '../../startup/application/startup_providers.dart';
import '../data/group_media_repository.dart';
import '../domain/create_group_media.dart';
import '../domain/group_media_type.dart';

part 'create_media_controller.g.dart';

@riverpod
class CreateMediaController extends _$CreateMediaController {
  @override
  Future<GroupMedia?> build() async => null;

  Future create(String groupId, int tmdbId, GroupMediaType type) async {
    state = const AsyncLoading();

    final request = CreateGroupMedia(
      groupId: groupId,
      tmdbId: tmdbId,
      mediaType: type,
      addedBy: ref.read(supabaseProvider).auth.currentUser!.id,
    );

    state = await AsyncValue.guard(() => ref.read(groupMediaRepositoryProvider).createAsync(request));
  }
}
