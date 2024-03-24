import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:watchable/src/features/groups/domain/join_request.dart';

import '../data/join_request_repository.dart';

part 'join_request_controller.g.dart';

@riverpod
class JoinRequestController extends _$JoinRequestController {
  @override
  FutureOr<void> build(JoinRequest request) async {}

  Future approve() async {
    state = const AsyncLoading();

    final repo = ref.read(groupJoinRequestRepositoryProvider);

    state = await AsyncValue.guard(() async {
      await repo.approveAsync(request);
      ref.invalidate(listJoinRequestsByGroupIdProvider(request.groupId));
    });
  }

  Future reject() async {
    state = const AsyncLoading();

    final repo = ref.read(groupJoinRequestRepositoryProvider);

    state = await AsyncValue.guard(() async {
      await repo.rejectAsync(request);
      ref.invalidate(listJoinRequestsByGroupIdProvider(request.groupId));
    });
  }
}
