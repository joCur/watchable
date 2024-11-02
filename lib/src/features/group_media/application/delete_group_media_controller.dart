import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/group_media_repository.dart';

part 'delete_group_media_controller.g.dart';

@riverpod
class DeleteGroupMediaController extends _$DeleteGroupMediaController {
  @override
  Future<void> build() async {}

  Future execute(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(groupMediaRepositoryProvider).deleteAsync(id));
  }
}
