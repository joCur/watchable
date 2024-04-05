import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:watchable/src/features/groups/domain/group_member.dart';

import '../../startup/application/startup_providers.dart';
import '../domain/role.dart';

part 'group_member_repository.g.dart';

@riverpod
GroupMemberRepository groupMemberRepository(GroupMemberRepositoryRef ref) {
  return GroupMemberRepository();
}

@riverpod
Stream<List<GroupMember>> listGroupMembersByGroupId(ListGroupMembersByGroupIdRef ref, String groupId) {
  return ref.watch(groupMemberRepositoryProvider).listByGroupIdAsync(groupId);
}

@riverpod
Stream<List<GroupMember>> listGroupMembersByUserId(ListGroupMembersByUserIdRef ref, String userId) {
  return ref.watch(groupMemberRepositoryProvider).listByUserIdAsync(userId);
}

@riverpod
Future<Role> getGroupMemberRole(GetGroupMemberRoleRef ref, String groupId) async {
  final supabase = ref.watch(supabaseProvider);
  final memberships = await ref.watch(listGroupMembersByUserIdProvider(supabase.auth.currentUser!.id).future);
  return memberships.firstWhere((element) => element.groupId == groupId).role;
}

class GroupMemberRepository {
  final supabase = Supabase.instance.client;
  final table = "group_users";

  Stream<List<GroupMember>> listByGroupIdAsync(String groupId) {
    return supabase
        .from(table)
        .stream(primaryKey: ["group_id", "user_id"])
        .eq('group_id', groupId)
        .map((event) => event.map((e) => GroupMember.fromJson(e)).toList());
  }

  Stream<List<GroupMember>> listByUserIdAsync(String userId) {
    return supabase
        .from(table)
        .stream(primaryKey: ["group_id", "user_id"])
        .eq('user_id', userId)
        .map((event) => event.map((e) => GroupMember.fromJson(e)).toList());
  }
}
