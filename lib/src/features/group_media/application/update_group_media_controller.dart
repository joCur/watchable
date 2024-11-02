import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:watchable/src/features/group_media/domain/group_media.dart';

import '../data/group_media_repository.dart';

part 'update_group_media_controller.g.dart';

@riverpod
class UpdateGroupMediaController extends _$UpdateGroupMediaController {
  @override
  Future<GroupMedia?> build() async => null;

  Future execute(String id, bool isWatched) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(groupMediaRepositoryProvider).updateAsync(id, isWatched));
  }
}
