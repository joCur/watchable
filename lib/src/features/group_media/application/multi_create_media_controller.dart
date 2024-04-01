import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../startup/application/startup_providers.dart';
import '../data/group_media_repository.dart';
import '../domain/create_group_media.dart';
import '../domain/group_media_type.dart';
import 'group_multi_select_controller.dart';

part 'multi_create_media_controller.g.dart';

@riverpod
class MultiCreateMediaController extends _$MultiCreateMediaController {
  @override
  FutureOr<void> build() async {}

  Future<void> create(int tmdbId, GroupMediaType type) async {
    state = const AsyncLoading();

    final groupIds = ref.watch(groupMultiSelectControllerProvider);

    state = await AsyncValue.guard<void>(() async {
      for (final groupId in groupIds) {
        final request = CreateGroupMedia(
          groupId: groupId,
          tmdbId: tmdbId,
          mediaType: type,
          addedBy: ref.read(supabaseProvider).auth.currentUser!.id,
        );
        await ref.read(groupMediaRepositoryProvider).createAsync(request);
      }
    });
  }
}
