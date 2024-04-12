import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tuple/tuple.dart';
import 'package:watchable/src/features/group_media/domain/create_group_media.dart';
import 'package:watchable/src/features/group_media/domain/group_media_reaction.dart';

import '../../groups/data/group_repository.dart';
import '../../groups/domain/group.dart';
import '../domain/group_media.dart';
import '../domain/media_reaction.dart';

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

@riverpod
Stream<List<GroupMediaReaction>> watchReactionsByMediaId(WatchReactionsByMediaIdRef ref, String mediaId) {
  return ref.watch(groupMediaRepositoryProvider).watchReactions(mediaId);
}

class GroupMediaRepository {
  final supabase = Supabase.instance.client;
  final table = "group_media";

  GroupMediaRepository();

  Stream<List<GroupMedia>> watch() {
    return supabase
        .from(table)
        .stream(primaryKey: ['id'])
        .order('created_at', ascending: false)
        .map((event) => event.map((e) => GroupMedia.fromJson(e)).toList());
  }

  Stream<List<GroupMediaReaction>> watchReactions(String groupMediaId) {
    return supabase
        .from('group_media_reactions')
        .stream(primaryKey: ['group_media_id', 'user_id'])
        .eq('group_media_id', groupMediaId)
        .map((event) => event.map((e) => GroupMediaReaction.fromJson(e)).toList());
  }

  Future<GroupMediaReaction> createReaction(String userId, String mediaId, MediaReaction reaction) async {
    final request = GroupMediaReaction(groupMediaId: mediaId, userId: userId, reaction: reaction, createdAt: DateTime.now());
    final response = await supabase.from('group_media_reactions').insert(request.toJson()).single();
    return GroupMediaReaction.fromJson(response);
  }

  Future<GroupMediaReaction> updateReaction(GroupMediaReaction reaction) async {
    final request = reaction.copyWith(updatedAt: DateTime.now());
    final response = await supabase.from('group_media_reactions').update(request.toJson()).single();
    return GroupMediaReaction.fromJson(response);
  }

  Future deleteReaction(String userId, String mediaId) async {
    await supabase.from('group_media_reactions').delete().eq('group_media_id', mediaId).eq('user_id', userId);
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
