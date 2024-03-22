import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:watchable/src/features/groups/data/join_request_repository.dart';

import '../../startup/application/startup_providers.dart';
import '../domain/group.dart';

part 'group_repository.g.dart';

@riverpod
GroupRepository groupRepository(GroupRepositoryRef ref) {
  return GroupRepository();
}

@riverpod
Future<List<Group>> listGroups(ListGroupsRef ref) async {
  return ref.watch(groupRepositoryProvider).listAsync();
}

@riverpod
Future<List<Group>> listOtherGroupsForCurrentUser(ListOtherGroupsForCurrentUserRef ref) async {
  final ownGroups = await ref.watch(listCurrentUserGroupsProvider.future);
  final allGroups = await ref.watch(listGroupsProvider.future);
  final joinRequests = await ref.watch(listCurrentUserJoinRequestsProvider.future);

  return allGroups.where((group) => !ownGroups.contains(group) && !joinRequests.any((request) => request.groupId == group.id)).toList();
}

@riverpod
Future<List<Group>> listCurrentUserGroups(ListCurrentUserGroupsRef ref) async {
  final supabase = ref.watch(supabaseProvider);
  return ref.watch(groupRepositoryProvider).listByUserIdAsync(supabase.auth.currentUser!.id);
}

@riverpod
Future<Group> getGroupById(GetGroupByIdRef ref, String id) async {
  return ref.watch(groupRepositoryProvider).getByIdAsync(id);
}

class GroupRepository {
  final supabase = Supabase.instance.client;
  final table = "groups";

  Future<List<Group>> listAsync() async {
    final response = await supabase.from(table).select("*");
    return response.map((e) => Group.fromJson(e)).toList();
  }

  Future<List<Group>> listByUserIdAsync(String userId) async {
    final response = await supabase.from(table).select("*, group_users!inner(user_id,group_id)").eq('group_users.user_id', userId);
    return response.map((e) => Group.fromJson(e)).toList();
  }

  Future<Group> getByIdAsync(String id) async {
    final response = await supabase.from(table).select("*").eq('id', id).single();
    return Group.fromJson(response);
  }

  Future<Group> createAsync(String name, String? description, bool anyoneCanJoin) async {
    final response = await supabase
        .from(table)
        .insert({
          'name': name,
          'description': description,
          'anyone_can_join': anyoneCanJoin,
        })
        .select()
        .single();

    return Group.fromJson(response);
  }

  Future<Group> updateAsync(String id, String name, String? description, bool anyoneCanJoin) async {
    final response = await supabase
        .from(table)
        .update({
          'name': name,
          'description': description,
          'anyone_can_join': anyoneCanJoin,
        })
        .eq('id', id)
        .select()
        .single();

    return Group.fromJson(response);
  }

  Future deleteAsync(String id) async {
    await supabase.from(table).delete().eq('id', id);
  }
}
