import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/group_repository.dart';
import '../domain/group.dart';

part 'update_group_controller.g.dart';

@riverpod
class UpdateGroupController extends _$UpdateGroupController {
  @override
  FutureOr<void> build() async {}

  Future<void> updateGroup(Group updatedGroup) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async => await ref.read(groupRepositoryProvider).updateAsync(updatedGroup));
  }
}
