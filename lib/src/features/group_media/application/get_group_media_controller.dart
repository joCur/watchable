import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../tmdb/data/tmdb_repository.dart';
import '../../tmdb/domain/media.dart';
import '../data/group_media_repository.dart';
import '../domain/group_media.dart';
import '../domain/group_media_type.dart';

part 'get_group_media_controller.g.dart';

class GroupMediaState {
  const GroupMediaState({
    required this.item,
    required this.media,
  });

  final GroupMedia item;
  final Media media;
}

@riverpod
Future<GroupMediaState> getGroupMediaItemById(GetGroupMediaItemByIdRef ref, String id) async {
  final item = (await ref.watch(watchGroupMediaProvider.future)).firstWhere((element) => element.id == id);
  final media =
      item.mediaType == GroupMediaType.movie ? ref.watch(getMovieByIdProvider(item.tmdbId)) : ref.watch(getTvByIdProvider(item.tmdbId));

  return GroupMediaState(item: item, media: media.requireValue);
}
