import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/group_repository.dart';

part 'create_group_controller.g.dart';

@riverpod
class CreateGroupController extends _$CreateGroupController {
  @override
  FutureOr<bool> build() async => false;

  Future createGroup(String name, String? description, bool anyoneCanJoin) async {
    state = const AsyncLoading();

    final groups = ref.read(groupRepositoryProvider);

    state = await AsyncValue.guard(() async {
      await groups.createAsync(name, description, anyoneCanJoin);
      return true;
    });
  }
}
