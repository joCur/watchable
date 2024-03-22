import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:watchable/src/features/groups/data/join_request_repository.dart';
import 'package:watchable/src/features/groups/domain/join_request.dart';

import '../../startup/application/startup_providers.dart';
import '../data/group_repository.dart';

part 'join_group_controller.g.dart';

@riverpod
class JoinGroupController extends _$JoinGroupController {
  @override
  FutureOr<JoinRequest?> build(String groupId) async => null;

  Future join() async {
    state = const AsyncLoading();

    final repo = ref.read(groupJoinRequestRepositoryProvider);
    final userId = ref.read(supabaseProvider).auth.currentUser!.id;

    state = await AsyncValue.guard(() async {
      final response = await repo.createAsync(groupId, userId);
      ref.invalidate(listOtherGroupsForCurrentUserProvider);
      return response;
    });
  }
}
