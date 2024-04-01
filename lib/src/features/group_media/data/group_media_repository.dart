import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:watchable/src/features/group_media/domain/create_group_media.dart';

import '../domain/group_media.dart';

part 'group_media_repository.g.dart';

@riverpod
GroupMediaRepository groupMediaRepository(GroupMediaRepositoryRef ref) {
  return GroupMediaRepository();
}

@riverpod
Stream<List<GroupMedia>> watchGroupMediaByGroupId(WatchGroupMediaByGroupIdRef ref, String groupId) {
  return ref.watch(groupMediaRepositoryProvider).watchByGroupId(groupId);
}

class GroupMediaRepository {
  final supabase = Supabase.instance.client;
  final table = "group_media";

  Stream<List<GroupMedia>> watchByGroupId(String groupId) {
    return supabase
        .from(table)
        .stream(primaryKey: ['id'])
        .eq('group_id', groupId)
        .order('created_at', ascending: false)
        .map((event) => event.map((e) => GroupMedia.fromJson(e)).toList());
  }

  Future<GroupMedia> createAsync(CreateGroupMedia media) async {
    final response = await supabase.from(table).insert(media.toJson()).select().single();

    return GroupMedia.fromJson(response);
  }

  Future deleteAsync(String id) async {
    await supabase.from(table).delete().eq('id', id);
  }
}
