import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:watchable/src/features/groups/data/group_member_repository.dart';

import '../../startup/application/startup_providers.dart';
import '../domain/group.dart';

part 'group_repository.g.dart';

@riverpod
GroupRepository groupRepository(GroupRepositoryRef ref) {
  return GroupRepository(ref.watch(groupMemberRepositoryProvider));
}

@riverpod
Stream<List<Group>> watchGroups(WatchGroupsRef ref) {
  return ref.watch(groupRepositoryProvider).watch();
}

@riverpod
Future<List<Group>> listOtherGroupsForCurrentUser(ListOtherGroupsForCurrentUserRef ref) async {
  final supabase = ref.watch(supabaseProvider);
  final groups = await ref.watch(watchGroupsProvider.future);
  final memberships = await ref.watch(listGroupMembersByUserIdProvider(supabase.auth.currentUser!.id).future);

  return groups.where((element) => !memberships.any((membership) => membership.groupId == element.id)).toList();
}

@riverpod
Future<List<Group>> listCurrentUserGroups(ListCurrentUserGroupsRef ref) async {
  final supabase = ref.watch(supabaseProvider);
  final groups = await ref.watch(watchGroupsProvider.future);
  final memberships = await ref.watch(listGroupMembersByUserIdProvider(supabase.auth.currentUser!.id).future);

  return groups.where((element) => memberships.any((membership) => membership.groupId == element.id)).toList();
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
    final response =
        await supabase.from(table).select("*, group_users!inner(user_id,group_id)").eq('group_users.user_id', userId);
    return response.map((e) => Group.fromJson(e)).toList();
  }

  Stream<List<Group>> watch() {
    return supabase
        .from(table)
        .stream(primaryKey: ["id"])
        .order("name", ascending: true)
        .map((event) => event.map((e) => Group.fromJson(e)).toList());
  }

  Future<Group> getByIdAsync(String id) async {
    final response = await supabase.from(table).select("*").eq('id', id).single();
    return Group.fromJson(response);
  }

  Future<void> createAsync(String name, String? description, bool anyoneCanJoin) async {
    await supabase
        .rpc("create_group2", params: {"name": name, "description": description, "anyone_can_join": anyoneCanJoin});
  }

  Future<Group> updateAsync(Group group) async {
    final response = await supabase.from(table).update(group.toJson()).eq('id', group.id).select().single();

    return Group.fromJson(response);
  }

  Future deleteAsync(String id) async {
    await supabase.from(table).delete().eq('id', id);
  }
}
