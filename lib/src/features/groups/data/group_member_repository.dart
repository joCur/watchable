import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:watchable/src/features/groups/domain/group_member.dart';

part 'group_member_repository.g.dart';

@riverpod
GroupMemberRepository groupMemberRepository(GroupMemberRepositoryRef ref) {
  return GroupMemberRepository();
}

@riverpod
Future<List<GroupMember>> listGroupMembersByGroupId(ListGroupMembersByGroupIdRef ref, String groupId) async {
  return ref.watch(groupMemberRepositoryProvider).listByGroupIdAsync(groupId);
}

class GroupMemberRepository {
  final supabase = Supabase.instance.client;
  final table = "group_users";

  Future<List<GroupMember>> listByGroupIdAsync(String groupId) async {
    final response = await supabase.from(table).select("*").eq('group_id', groupId);
    return response.map((e) => GroupMember.fromJson(e)).toList();
  }
}
