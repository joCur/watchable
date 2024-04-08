import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tuple/tuple.dart';
import 'package:watchable/src/features/group_media/domain/create_group_media.dart';

import '../../groups/data/group_repository.dart';
import '../../groups/domain/group.dart';
import '../domain/group_media.dart';

part 'group_media_repository.g.dart';

@riverpod
GroupMediaRepository groupMediaRepository(GroupMediaRepositoryRef ref) {
  return GroupMediaRepository();
}

@riverpod
Stream<List<GroupMedia>> watchGroupMedia(WatchGroupMediaRef ref) {
  return ref.watch(groupMediaRepositoryProvider).watch();
}

@riverpod
Stream<List<GroupMedia>> watchGroupMediaByGroupId(WatchGroupMediaByGroupIdRef ref, String groupId) {
  return ref.watch(groupMediaRepositoryProvider).watchByGroupId(groupId);
}

@riverpod
Future<GroupMedia?> findGroupMediaByGroupId(FindGroupMediaByGroupIdRef ref, String groupId, int tmdbId) async {
  return ref.watch(groupMediaRepositoryProvider).findAsync(groupId, tmdbId);
}

@riverpod
Future<List<Tuple2<Group, bool>>> listGroupsWithMediaState(ListGroupsWithMediaStateRef ref, int tmdbId) async {
  List<Tuple2<Group, bool>> result = [];
  final groups = await ref.watch(listCurrentUserGroupsProvider.future);

  for (final group in groups) {
    final media = await ref.watch(findGroupMediaByGroupIdProvider(group.id, tmdbId).future);
    result.add(Tuple2(group, media != null));
  }

  return result;
}

class GroupMediaRepository {
  final supabase = Supabase.instance.client;
  final table = "group_media";

  GroupMediaRepository();

  // Future<Map<String, dynamic>> _getMedia(int tmdbId, String mediaType) async {
  //   final Media response;
  //   switch (mediaType) {
  //     case 'movie':
  //       response = await ref.read(getMovieByIdProvider(tmdbId).future);
  //       break;
  //     case 'tv':
  //       response = await ref.read(getTvByIdProvider(tmdbId).future);
  //       break;
  //     default:
  //       throw Exception('Unknown media type');
  //   }
  //   return response.toJson();
  // }
  //
  // Future<Map<String, dynamic>> _getProfile(String userId) async {
  //   final user = await ref.read(getProfileByIdProvider(userId).future);
  //   return user.toJson();
  // }
  //
  // Future<List<GroupMedia>> _toGroup(List<Map<String, dynamic>> data) async {
  //   for (final e in data) {
  //     e['profile'] = await _getProfile(e['added_by']);
  //     e['media'] = await _getMedia(e['tmdb_id'], e['media_type']);
  //   }
  //
  //   return data.map((e) => GroupMedia.fromJson(e)).toList();
  // }

  Stream<List<GroupMedia>> watch() {
    return supabase
        .from(table)
        .stream(primaryKey: ['id'])
        .order('created_at', ascending: false)
        .map((event) => event.map((e) => GroupMedia.fromJson(e)).toList());
  }

  Stream<List<GroupMedia>> watchByGroupId(String groupId) {
    return supabase
        .from(table)
        .stream(primaryKey: ['id'])
        .eq('group_id', groupId)
        .order('created_at', ascending: false)
        .map((event) => event.map((e) => GroupMedia.fromJson(e)).toList());
  }

  Future<GroupMedia?> findAsync(String groupId, int tmdbId) async {
    final response = await supabase.from(table).select().eq('group_id', groupId).eq('tmdb_id', tmdbId).maybeSingle();

    if (response == null) return null;
    return GroupMedia.fromJson(response);
  }

  Future<GroupMedia> createAsync(CreateGroupMedia media) async {
    final response = await supabase.from(table).insert(media.toJson()).select().single();
    return GroupMedia.fromJson(response);
  }

  Future deleteAsync(String id) async {
    await supabase.from(table).delete().eq('id', id);
  }
}
