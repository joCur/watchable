import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/group_repository.dart';
import '../domain/group.dart';

part 'create_group_controller.g.dart';

@riverpod
class CreateGroupController extends _$CreateGroupController {
  @override
  FutureOr<Group?> build() async => null;

  Future createGroup(String name, String? description, bool anyoneCanJoin) async {
    state = const AsyncLoading();

    final groups = ref.read(groupRepositoryProvider);

    state = await AsyncValue.guard(() async {
      final group = await groups.createAsync(name, description, anyoneCanJoin);
      ref.invalidate(listCurrentUserGroupsProvider);
      return group;
    });
  }
}
