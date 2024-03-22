import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:watchable/src/features/groups/domain/join_request.dart';

import '../../startup/application/startup_providers.dart';

part 'join_request_repository.g.dart';

@riverpod
JoinRequestRepository groupJoinRequestRepository(GroupJoinRequestRepositoryRef ref) {
  return JoinRequestRepository();
}

@riverpod
Future<List<JoinRequest>> listJoinRequestsByGroupId(ListJoinRequestsByGroupIdRef ref, String id) async {
  return ref.watch(groupJoinRequestRepositoryProvider).listByGroupIdAsync(id);
}

@riverpod
Future<List<JoinRequest>> listCurrentUserJoinRequests(ListCurrentUserJoinRequestsRef ref) async {
  String userId = ref.watch(supabaseProvider).auth.currentUser!.id;
  return ref.watch(groupJoinRequestRepositoryProvider).listByUserIdAsync(userId);
}

class JoinRequestRepository {
  final supabase = Supabase.instance.client;
  final table = "group_join_requests";

  Future<List<JoinRequest>> listAsync() async {
    final response = await supabase.from(table).select("*");
    return response.map((e) => JoinRequest.fromJson(e)).toList();
  }

  Future<List<JoinRequest>> listByGroupIdAsync(String groupId) async {
    final response = await supabase.from(table).select("*").eq('group_id', groupId);
    return response.map((e) => JoinRequest.fromJson(e)).toList();
  }

  Future<List<JoinRequest>> listByUserIdAsync(String userId) async {
    final response = await supabase.from(table).select("*").eq('user_id', userId);
    return response.map((e) => JoinRequest.fromJson(e)).toList();
  }

  Future<JoinRequest> createAsync(String groupId, String userId) async {
    final response = await supabase
        .from(table)
        .insert({
          'group_id': groupId,
          'user_id': userId,
        })
        .select()
        .single();

    return JoinRequest.fromJson(response);
  }

  Future deleteAsync(String id) async {
    await supabase.from(table).delete().eq('id', id);
  }

  Future approveAsync(JoinRequest request) async {
    await supabase.rpc("approve_member", params: {"_group_id": request.groupId, "_user_id": request.userId});
  }

  Future rejectAsync(JoinRequest request) async {
    await supabase.rpc("reject_member", params: {"_group_id": request.groupId, "_user_id": request.userId});
  }
}
