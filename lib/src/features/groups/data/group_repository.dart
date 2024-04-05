import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:watchable/src/features/groups/data/group_member_repository.dart';
import 'package:watchable/src/features/groups/data/join_request_repository.dart';

import '../../startup/application/startup_providers.dart';
import '../domain/group.dart';

part 'group_repository.g.dart';

@riverpod
GroupRepository groupRepository(GroupRepositoryRef ref) {
  return GroupRepository(ref.watch(groupMemberRepositoryProvider));
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
Stream<List<Group>> listCurrentUserGroups(ListCurrentUserGroupsRef ref) {
  final supabase = ref.watch(supabaseProvider);
  return ref.watch(groupRepositoryProvider).watchByUserId(supabase.auth.currentUser!.id);
}

@riverpod
Future<Group> getGroupById(GetGroupByIdRef ref, String id) async {
  return ref.watch(groupRepositoryProvider).getByIdAsync(id);
}

@riverpod
Group getCurrentUserGroupById(GetCurrentUserGroupByIdRef ref, String id) {
  return ref.watch(listCurrentUserGroupsProvider.select((data) => data.value!.firstWhere((group) => group.id == id)));
}

class GroupRepository {
  final supabase = Supabase.instance.client;
  final table = "groups";

  final GroupMemberRepository groupMemberRepository;

  GroupRepository(this.groupMemberRepository);

  Future<List<Group>> listAsync() async {
    final response = await supabase.from(table).select("*");
    return response.map((e) => Group.fromJson(e)).toList();
  }

  Future<List<Group>> listByUserIdAsync(String userId) async {
    final response = await supabase.from(table).select("*, group_users!inner(user_id,group_id)").eq('group_users.user_id', userId);
    return response.map((e) => Group.fromJson(e)).toList();
  }

  Stream<List<Group>> watchByUserId(String userId) {
    return supabase.from(table).stream(primaryKey: ["id"]).order("name", ascending: true).asyncMap((event) async {
          final allGroups = event.map((e) => Group.fromJson(e)).toList();
          final memberships = await groupMemberRepository.listByUserIdAsync(userId);
          return allGroups.where((group) => memberships.any((membership) => membership.groupId == group.id)).toList();

          // final response = supabase.from(table).select("*").inFilter('id', event.map((e) => e["group_id"]).toList()).order('name', ascending: true);
          // return response.map((e) => Group.fromJson(e)).toList();
        });

    return supabase.from("group_users").stream(primaryKey: ["group_id", "user_id"]).eq('user_id', userId).asyncMap(
          (event) async {
            final response = await supabase
                .from(table)
                .select("*")
                .inFilter('id', event.map((e) => e["group_id"]).toList())
                .order('name', ascending: true);
            return response.map((e) => Group.fromJson(e)).toList();
          },
        );
  }

  Future<Group> getByIdAsync(String id) async {
    final response = await supabase.from(table).select("*").eq('id', id).single();
    return Group.fromJson(response);
  }

  Future<void> createAsync(String name, String? description, bool anyoneCanJoin) async {
    await supabase.rpc("create_group2", params: {"name": name, "description": description, "anyone_can_join": anyoneCanJoin});
  }

  Future<Group> updateAsync(Group group) async {
    final response = await supabase.from(table).update(group.toJson()).eq('id', group.id).select().single();

    return Group.fromJson(response);
  }

  Future deleteAsync(String id) async {
    await supabase.from(table).delete().eq('id', id);
  }
}
